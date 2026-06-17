# Hook Integration

Hooks should surface instruction-health events. They should not autonomously mutate AGENTS.md, CLAUDE.md, or SKILL.md. Post hooks may append minimal audit JSONL records under this skill's `knowledge/incidents/` directory.

## Claude

Claude supports lifecycle hooks in `~/.claude/settings.json`.

Recommended triggers:

- `PreToolUse`: detect writes to active instruction files and emit a promotion-gate reminder.
- `PostToolUse`: log active instruction edits as audit candidates.

Instruction surfaces:

- `AGENTS.md`
- `CLAUDE.md`
- `.codex/AGENTS.md`
- `.claude/CLAUDE.md`
- `SKILL.md`
- `skills/**/SKILL.md`

Install entries from `hooks/claude-hooks.json` by merging them into `~/.claude/settings.json`.

## Codex

This Codex runtime exposes skills but not a Claude-style native hook settings file. Use `hooks/codex-instruction-hook.sh` as:

- a manual preflight before instruction edits
- a wrapper in local scripts
- a future adapter if Codex adds native lifecycle hooks

## Trigger Policy

Auto-trigger the skill or hook when:

- editing AGENTS.md, CLAUDE.md, or SKILL.md
- finishing a session longer than 30 minutes when there was instruction confusion, repeated process backtracking, or a proposed instruction change
- creating a postmortem or Hermes/review finding
- proposing a new global instruction
- pruning or reorganizing skills
- repeated review findings appear

Do not auto-apply active instruction edits. Produce report/proposal artifacts for human approval. Use quick-review mode for narrow findings; reserve full health reports for broad audits, pruning, regeneration, or active instruction proposals.
