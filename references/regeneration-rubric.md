# Regeneration Rubric

Regeneration turns scar tissue into healthy instruction tissue.

## Candidate Signals

- Three or more rules repeat the same underlying principle.
- Several incident-specific rules share one root cause.
- A rule cluster has accumulated exceptions.
- The system has both "do X" and "do not do X" rules for different contexts.
- Agents spend more effort interpreting the rule cluster than acting correctly.

## Regeneration Process

1. Name the underlying failure class.
2. List the current scar rules.
3. Identify what behavior must be preserved.
4. Identify what behavior can be removed.
5. Draft one higher-level principle.
6. Test the principle against the original incidents.
7. Test the principle against normal useful behavior.
8. Recommend replacement only if it preserves protection with lower complexity.

## Proposal Format

```text
Replace:
- Rule A
- Rule B
- Rule C

With:
<one durable principle>

Preserves:
<behaviors still protected>

Removes:
<overfit/obsolete details>

Risk:
<what might be lost>
```

