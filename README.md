# Agent Immune System

Detect prompt bloat, prevent rule autoimmunity, and regenerate healthier agent instructions.

Agent Immune System audits `AGENTS.md`, `CLAUDE.md`, `SKILL.md`, and project instruction files for duplicated rules, contradictions, stale assumptions, exception chains, and overfit guidance.

Launch demo:

- [Screenflow chat demo](assets/screenflow/chat-demo.html)
- [HyperFlow render brief](launch/hyperflow-screenflow-brief.md)

```text
Before: every painful agent mistake becomes another permanent rule.
After: lessons are tolerated, watched, archived, promoted, pruned, or regenerated proportionally.
```

## Quick Start

Use it from an agent session:

```text
Use agent immune system to audit my AGENTS.md. Do not edit yet.
```

Use the Codex hook adapter manually:

```bash
hooks/codex-instruction-hook.sh check ./AGENTS.md
hooks/codex-instruction-hook.sh log ./AGENTS.md
```

## What It Does

Agent Immune System is an instruction-health governance skill. It helps decide:

- whether a mistake deserves a permanent rule
- whether a rule is duplicated, stale, contradictory, or too broad
- whether several narrow rules can become one durable principle
- whether a lesson belongs in global instructions, a skill, a reference, watchlist, or dormant memory
- whether existing rules are creating agent autoimmunity

## Why Agent Instructions Rot

Long-lived agent workspaces accumulate scar tissue. A session goes wrong, someone adds a rule. Another session goes wrong, another exception appears. Eventually the system contains:

- prompt bloat
- duplicated rules
- stale project assumptions
- exception chains
- global rules created from local incidents
- instructions that make agents stop when they should safely continue

Agent Immune System treats mistakes as evidence, not automatic active memory.

## Supported Files

- `AGENTS.md`
- `CLAUDE.md`
- `SKILL.md`
- project instruction files
- session reviews
- postmortems
- review findings
- instruction diffs

## Decision Outcomes

| Outcome | Meaning |
|---|---|
| Tolerate | Do nothing; the issue is isolated or low cost. |
| Watchlist | Track temporarily before creating memory. |
| Incident memory | Store dormant evidence without changing active instructions. |
| Reference antibody | Keep useful but narrow lessons outside active instructions. |
| Active instruction candidate | Propose a durable rule for human approval. |
| Regeneration candidate | Replace many scar rules with one healthier principle. |
| Demotion | Move a rule to a narrower surface. |
| Deletion | Remove stale, duplicate, or harmful guidance. |

## Example Audit

User complaint:

```text
My AGENTS.md is huge and agents keep asking permission even after I approved the work.
```

Finding:

```text
Several old rules were created from narrow worktree incidents. They now suppress safe investigation and duplicate newer guard instructions.
```

Recommendation:

```text
Demote three incident-specific rules into dormant memory and replace them with one proportionality principle.
```

See [`examples/`](examples/) for concrete cases.

## Safety Model

Agent Immune System is proposal-first.

- It does not silently rewrite active instruction files.
- It does not harvest shell history, keychains, secrets, or credentials.
- It does not turn every mistake into a permanent rule.
- Human approval is required before active instruction edits.

## Claude Code Hooks

Optional hooks are provided in [`hooks/`](hooks/). They detect edits to active instruction surfaces and emit a reminder to run the promotion rubric.

See [`references/hook-integration.md`](references/hook-integration.md).

## Compatibility

Agent Immune System is agent-agnostic at the document level. It works anywhere an AI agent can inspect Markdown instruction files and produce a review.

Packaged surfaces:

- Claude Code: manual skill use plus optional lifecycle hooks
- Codex: manual skill use and hook adapter script
- Generic agent workspaces: manual review of `AGENTS.md`, `CLAUDE.md`, `SKILL.md`, and postmortems

## Commercial Use

The core project is open source and free to use.

Commercial support, private repo automation, hosted team workflows, and done-for-you instruction cleanup are planned for teams that want help applying it at scale.

## Contributing

Contributions should preserve the immune-system principle: do not add bloat to fight bloat.

Before proposing a new active rule or rubric, show that it is:

- damaging
- recurring or critical
- generalizable
- not already covered
- proportional
- non-autoimmune
- on the right instruction surface

See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## License

MIT. See [`LICENSE`](LICENSE).
