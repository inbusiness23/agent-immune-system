# Example: Regenerate Duplicate Rules

Current rules:

```text
Always check the branch before editing.
Always verify git status before editing.
Do not edit main.
Do not continue in dirty worktrees.
Stop if unrelated work exists.
```

Regenerated principle:

```text
Before editing, confirm the worktree is safe: correct branch, writable metadata, clean or task-related changes only, and no collision with another active writer.
```

Why:

Five related guardrails become one durable principle without losing protection.
