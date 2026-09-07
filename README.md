# Satisfy Client

Public game files and launcher channel for [Satisfy Online](https://satisfy.live).

[Satisfy Launcher](launcher/windows) installs and updates this tree by SHA-256. The first install can download a single zip from the latest GitHub Release instead of tens of thousands of individual files.

## Play

1. Copy `launcher/windows/` into any empty folder.
2. Run `SatisfyLauncher.exe`.
3. The launcher installs the client into `games/satisfy/` next to the executable.

Players only need these files:

```text
SatisfyLauncher.exe
SDL2.dll
launcher.json
assets/
```

Python, PowerShell, Git, and extra tools are not required to play.

Before **Play**, the launcher can **Close after start** or **Keep open**. The choice is saved locally.

## Repository layout

```text
channel.json                 # fetched by the player launcher
manifest.json                # SHA-256 index of game files
system/ texture/ map/ ...    # game tree
launcher/windows/            # player launcher pack and its own manifest.json
scripts/generate_manifest.py # used by GitHub Actions
```

Do not commit `user/` session dumps, `log/`, `dumps/`, `cache/`, or `games/`. Do not use Git LFS. Individual files in this repository must stay under GitHub's 100 MB limit. The full first-install client belongs on a GitHub Release.

## How updates work

| Change | What players receive |
| --- | --- |
| Game files on `main` | Per-file SHA-256 update after Actions refreshes `manifest.json` |
| New GitHub Release zip named `satisfy-windows.zip` | First install downloads that latest asset |
| New files in `launcher/windows/` plus a higher `launcher.version` in `channel.json` | Launcher self-update |

`channel.json` already points at this repository and names the release asset:

```json
"installPack": {
  "asset": "satisfy-windows.zip"
}
```

Players always resolve the latest pack from:

```text
https://github.com/LauncherClients/SatisfyClient/releases/latest/download/satisfy-windows.zip
```

You do not need to edit `channel.json` for every new release tag.

## Publish a client Release

Build a zip of the game tree (exclude `.git`, `.github`, `launcher/`, logs, and the channel/manifest files). Then attach it as `satisfy-windows.zip` on a GitHub Release:

```bash
gh release create client-YYYY.MM.DD satisfy-windows.zip \
  --repo LauncherClients/SatisfyClient \
  --latest \
  --title "Client YYYY.MM.DD"
```

If that tag already exists, upload or replace the asset on the same release. Keep the asset name equal to `installPack.asset`.

## Publish a launcher update

Replace the contents of `launcher/windows/` with a current player pack:

```text
SatisfyLauncher.exe
SDL2.dll
launcher.json
assets/
manifest.json
```

Bump `launcher.version` in `channel.json` so installed launchers pick up the new pack. Do not put the 1 GB client zip inside `launcher/windows/` or the git tree.

## Manifest generation

Pushing game or launcher files on `main` runs [`.github/workflows/generate-manifest.yml`](.github/workflows/generate-manifest.yml). The job hashes the tree and commits `manifest.json` only when the hashes changed.

Required repository setting: **Settings → Actions → General → Workflow permissions → Read and write**. Leave pull-request approval off. If `main` is protected, allow GitHub Actions to push.

| What you push | What Actions does |
| --- | --- |
| Only `manifest.json` / `launcher/windows/manifest.json` | Does not run |
| Game or launcher files, hashes already match | Runs, no new commit |
| Game or launcher files, hashes are stale | Rewrites the matching manifest and pushes |
| Manual **Run workflow** | Always hashes; commits only if something changed |

A matching manual manifest is left alone.

## Links

- Website: [satisfy.live](https://satisfy.live)
- Latest client pack: [GitHub Releases](https://github.com/LauncherClients/SatisfyClient/releases/latest)
- Windows launcher pack: [`launcher/windows`](launcher/windows)
