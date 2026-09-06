#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [[ -x ./SatisfyLauncher ]]; then
  exec ./SatisfyLauncher "$@"
fi
if [[ -x ./ClientPatcher ]]; then
  exec ./ClientPatcher "$@"
fi
echo "SatisfyLauncher was not found next to this script." >&2
exit 1
