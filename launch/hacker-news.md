# Hacker News Launch Draft

Title:

```text
Show HN: Agent Immune System - audit and regenerate bloated AI agent instructions
```

Post:

```markdown
I built Agent Immune System, an open-source skill for auditing AI agent instruction files like `AGENTS.md`, `CLAUDE.md`, and `SKILL.md`.

The problem: agent rules accumulate fast. After a few weeks, instructions get duplicated, stale, contradictory, and weirdly self-defeating. I call that rule autoimmunity: rules designed to protect the agent start preventing useful work.

Agent Immune System detects prompt bloat, duplicate instructions, conflicting guidance, stale assumptions, and overfit rules. It then produces human-reviewable proposals: promote, demote, delete, route to memory, or regenerate several narrow rules into one durable principle.

It is proposal-first by default. No silent rewrites.
```
