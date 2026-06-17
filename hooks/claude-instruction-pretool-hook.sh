#!/usr/bin/env bash
set -euo pipefail

payload="$(cat)"

if printf '%s' "$payload" | grep -Eiq '(^|/)(AGENTS\.md|CLAUDE\.md|SKILL\.md)(["[:space:]]|$)|(\.codex/AGENTS\.md|\.claude/CLAUDE\.md)|/skills/[^[:space:]"]*/SKILL\.md'; then
  cat <<'MSG'
Agent Immune System: active instruction surface detected.
Before promoting a new rule, verify: damaging, recurring/critical, generalizable, uncovered, proportional, non-autoimmune, and right-surface. Prefer watchlist/reference/regeneration when evidence is narrow.
MSG
fi

exit 0
