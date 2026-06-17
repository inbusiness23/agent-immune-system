# Autoimmune Rubric

Autoimmune instructions make agents worse while trying to prevent past mistakes.

## Symptoms

- "Never" rules with many exceptions.
- Rules that duplicate the same warning in multiple instruction files.
- A global rule created from a project-specific incident.
- Rules that make agents ask for permission when the user already authorized the work.
- Rules that make agents stop instead of doing safe investigation.
- Instructions that conflict with skill-specific procedures.
- Long policy sections that agents repeatedly ignore or misapply.
- Rules that protect against a low-cost mistake by blocking high-value behavior.
- Stale rules with no recent evidence.

## Review Questions

1. What useful behavior might this rule suppress?
2. Is this already covered by a broader principle?
3. Does this rule need exceptions to be true?
4. Is the exception list growing?
5. Is the rule global when it should be local?
6. Does it increase token burn more than it reduces future error?
7. Would a skill/reference/checklist handle this better?

## Findings Format

For each autoimmune finding, report:

- instruction surface
- rule or cluster
- symptom
- likely harm
- recommended action: keep, rewrite, demote, delete, or regenerate
- confidence

