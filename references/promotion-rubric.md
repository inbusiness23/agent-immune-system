# Promotion Rubric

Use this before adding anything to AGENTS.md, CLAUDE.md, project instructions, or a SKILL.md.

## Required Gates

Promote only when all are true:

1. **Damaging**: the behavior caused meaningful wasted time, wrong output, unsafe action, or repeated rework.
2. **Recurring**: the same pattern appeared across sessions, projects, models, or agents; or one incident is critical and general.
3. **Generalizable**: the rule prevents a class of errors, not one historical accident.
4. **Uncovered**: existing instructions do not already cover it clearly.
5. **Proportional**: the rule costs less than the future failures it prevents.
6. **Non-autoimmune**: it does not suppress useful core behavior or create exception chains.
7. **Right surface**: global, project, or skill-level placement is justified.

## Cost Of Rule

Score 0-3 each:

| Factor | 0 | 3 |
|---|---|---|
| Token cost | tiny | large |
| Cognitive cost | obvious | requires interpretation |
| Duplication risk | unique | already repeated elsewhere |
| Contradiction risk | low | likely to conflict |
| Behavior value | prevents little | prevents expensive failures |
| Scope fit | exact | too broad/narrow |

Reject active promotion when cost is high and behavior value is not clearly higher.

## Preferred Outcomes

Default routing:

```text
one-off -> tolerate
repeated but narrow -> watchlist or incident memory
repeated and useful but specific -> reference antibody
repeated, damaging, general -> active instruction proposal
many related scars -> regeneration proposal
stale/harmful -> demotion or deletion proposal
```

