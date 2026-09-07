# Generate `manifest.json` on push

Hashes the game tree and `launcher/windows`, then commits those manifests only if they changed.

Players never run this workflow. `.github/` and the hasher script are not downloaded into `games/satisfy/`.

## Repository settings

**Settings → Actions → General → Workflow permissions**

- **Read and write permissions** — on
- **Allow GitHub Actions to create and approve pull requests** — off

If `main` is protected, allow GitHub Actions to push or the job will hash but fail to commit.

## Manual manifests

- Push only `manifest.json` → the workflow does not run
- Push game or launcher files whose hashes already match → the job runs and makes no commit
- Push game or launcher files with stale hashes → the job rewrites the matching manifest and pushes
- **Run workflow** always hashes and commits only when something changed
