#!/usr/bin/env bash
set -euo pipefail

ATTEMPTS="${1:-15}"
SLEEP_SECS="${2:-1}"

for ((i=1; i<=ATTEMPTS; i++)); do
  OUT="$(openclaw gateway status 2>&1 || true)"
  if grep -q 'RPC probe: ok' <<<"$OUT"; then
    printf '%s\n' "$OUT"
    exit 0
  fi
  sleep "$SLEEP_SECS"
done

printf '%s\n' "$OUT"
exit 1
