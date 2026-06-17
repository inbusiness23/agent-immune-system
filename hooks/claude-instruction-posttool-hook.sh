#!/usr/bin/env bash
set -uo pipefail

payload="$(cat)"
log_dir="$HOME/.agents/skills/agent-immune-system/knowledge/incidents"

if printf '%s' "$payload" | grep -Eiq '(^|/)(AGENTS\.md|CLAUDE\.md|SKILL\.md)(["[:space:]]|$)|(\.codex/AGENTS\.md|\.claude/CLAUDE\.md)|/skills/[^[:space:]"]*/SKILL\.md'; then
  mkdir -p "$log_dir" || exit 0
  ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  file="$log_dir/hook-observation-$(date -u +%Y%m%d).jsonl"
  printf '{"timestamp":"%s","event":"instruction_surface_touched","note":"Review with agent-immune-system before broad promotion."}\n' "$ts" >> "$file" || true
fi

exit 0
