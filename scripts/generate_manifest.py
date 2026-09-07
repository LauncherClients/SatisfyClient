#!/usr/bin/env python3
"""Write a ClientPatcher SHA-256 manifest.json (same skip rules as ClientPatcherPublish)."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import sys
from datetime import date
from pathlib import Path

SKIP_DIRECTORIES = {
    ".git",
    ".github",
    ".gitlab",
    "log",
    "logs",
    "dumps",
    "cache",
    "launcher",
    "games",
}

SKIP_FILES = {
    "install-state.json",
    ".DS_Store",
    "lua_err.txt",
    "apply-update.bat",
    "apply-update.sh",
    "login_accounts.lst",
    "manifest.json",
    "channel.json",
    "launcher.json",
    "README.md",
    "LICENSE",
    "COPYRIGHT",
    ".gitignore",
    ".gitlab-ci.yml",
    "generate_manifest.py",
}


def should_skip_file(name: str) -> bool:
    return name in SKIP_FILES or name.endswith(".part")


def default_version() -> str:
    today = date.today()
    return f"{today.year:04}.{today.month:02}.{today.day:02}"


def resolve_output(requested: Path | None, root: Path) -> Path:
    if requested is None:
        return root / "manifest.json"
    if requested.is_dir() or requested.suffix == "":
        return requested / "manifest.json"
    return requested


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        while True:
            chunk = handle.read(1024 * 1024)
            if not chunk:
                break
            digest.update(chunk)
    return digest.hexdigest()


def collect_files(root: Path) -> list[Path]:
    files: list[Path] = []
    for current, dir_names, file_names in os.walk(root, followlinks=False):
        dir_names[:] = [name for name in dir_names if name not in SKIP_DIRECTORIES]
        current_path = Path(current)
        for name in file_names:
            if should_skip_file(name):
                continue
            path = current_path / name
            if not path.is_file():
                continue
            files.append(path.relative_to(root))
    files.sort(key=lambda item: item.as_posix())
    return files


def build_manifest(root: Path, version: str) -> dict:
    files = collect_files(root)
    entries = []
    total = len(files)
    print(f"Hashing {total} files...", flush=True)
    for index, relative in enumerate(files, start=1):
        path = root / relative
        posix = relative.as_posix()
        if index == 1 or index == total or index % 250 == 0:
            print(f"Hashing {index}/{total}  {posix}", flush=True)
        entries.append(
            {
                "path": posix,
                "size": path.stat().st_size,
                "sha256": sha256_file(path),
            }
        )
    return {"format": 1, "version": version, "files": entries}


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate ClientPatcher manifest.json")
    parser.add_argument("--root", type=Path, default=Path("."), help="Client tree to hash")
    parser.add_argument("--out", type=Path, default=None, help="manifest.json path or folder")
    parser.add_argument("--version", default="", help="Manifest version (default: YYYY.MM.DD)")
    args = parser.parse_args()
    root = args.root.resolve()
    if not root.is_dir():
        print(f"root is not a directory: {root}", file=sys.stderr)
        return 1
    output = resolve_output(args.out.resolve() if args.out else None, root)
    output.parent.mkdir(parents=True, exist_ok=True)
    version = args.version.strip() or default_version()
    manifest = build_manifest(root, version)
    output.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(f"Wrote {output} ({len(manifest['files'])} files, version {version})", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
