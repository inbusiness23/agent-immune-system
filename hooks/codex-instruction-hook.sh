#!/usr/bin/env bash
set -euo pipefail

mode="${1:-check}"
target="${2:-.}"
log_dir="$HOME/.agents/skills/agent-immune-system/knowledge/incidents"

case "$mode" in
  check)
    if printf '%s\n' "$target" | grep -Eiq '(^|/)(AGENTS\.md|CLAUDE\.md|SKILL\.md)$|(\.codex/AGENTS\.md|\.claude/CLAUDE\.md)|/skills/.*/SKILL\.md$'; then
      cat <<'MSG'
Agent Immune System: active instruction surface target detected.
Run the promotion rubric before editing. Default to incident memory, watchlist, reference antibody, or regeneration unless active-rule evidence is strong.
MSG
    fi
    ;;
  log)
    mkdir -p "$log_dir"
    ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    file="$log_dir/codex-observation-$(date -u +%Y%m%d).jsonl"
    python3 -c 'import json,sys; print(json.dumps({"timestamp":sys.argv[1],"event":"codex_instruction_review_candidate","target":sys.argv[2]}))' "$ts" "$target" >> "$file"
    ;;
  *)
    echo "Usage: $0 [check|log] [target]" >&2
    exit 2
    ;;
esac
