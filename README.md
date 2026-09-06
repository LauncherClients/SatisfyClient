# Satisfy client + launcher files

Public SHA-256 patch tree for **Satisfy Launcher**.

## Layout

```text
channel.json                 # fetched by the player launcher
manifest.json                # game files only
system/ texture/ map/ ...    # game tree (no user/, log/, dumps/)
launcher/windows/            # player launcher pack + its own manifest.json
```

Players copy `launcher/windows/` to a folder (for example `E:\top clients\Satisfy`) and run `SatisfyLauncher.exe`.

First run has no `games/satisfy/install-state.json`, so the launcher **installs the client** from this repo's `manifest.json` into `games/satisfy/`.

Bump `launcher.version` in `channel.json` and replace `launcher/windows/` to publish a launcher self-update. Keep it equal to the built version (`1.0.0`) until you ship a newer launcher.

Do not use Git LFS. Do not commit `user/`, `log/`, `dumps/`, `cache/`, or `games/`.
