# Generate `manifest.json` on push

Hashes the game tree and `launcher/windows`, then commits those manifests **only if they changed**.

Players never run this. `.github/` and this script are not downloaded into `games/satisfy/`.

## GitHub settings

Settings → Actions → General → Workflow permissions:

- **Read and write permissions** — on.
- **Allow GitHub Actions to create and approve pull requests** — off (not needed).

## Manual manifest

- Push **only** `manifest.json` → this workflow does **not** run (`paths-ignore`).
- Push game/launcher files and your hashes **already match** → job runs, **no new commit**.
- Push game/launcher files and your hashes are **wrong** → job **rewrites** the manifest and pushes.

See `Tools/ClientPatcher/README.md` in the Phoenix repo for the full table.
