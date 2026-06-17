# Codex Session Transcript Fixture

This fixture drives the workflow demo video.

## 1. User Runs The Skill

**User**

```text
Use agent immune system to audit demo/workflow/AGENTS.before.md. Do not edit yet.
```

**Codex**

```text
Instruction Health Score: 58/100

Findings:
- F1: Shell safety rules block safe read-only discovery. Regenerate.
- F2: Git/worktree rules duplicate the same worktree-safety principle. Regenerate.
- F3: Browser proof rules are workflow-specific. Demote to proof-review skill.
- F4: "Every mistake becomes a permanent rule" creates prompt scar tissue. Replace.

Recommendation:
Delete 16 narrow rules, add 4 durable principles, and keep active edits proposal-first.
```

## 2. User Applies The Fix

**User**

```text
Apply the recommended instruction-health patch.
```

**Codex**

```text
Applied patch:
- Regenerated shell safety
- Regenerated worktree safety
- Demoted browser proof details
- Replaced permanent-scar rule with proportional memory routing
```

## 3. Side-By-Side Result

```text
Before cleanup: 8m20s completion time, 5 agent interruptions
After cleanup:  5m00s completion time, 1 agent interruption
Result: 40% faster in the demo replay
```
