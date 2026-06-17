# Example: Detect Autoimmune Instruction

Rule:

```text
Never run commands without asking first.
```

Symptom:

The agent stops before safe read-only discovery even when the user asked it to investigate.

Finding:

This rule overcorrects. It blocks useful core behavior.

Recommendation:

```text
Replace with a narrower rule: ask before destructive, external-write, or credential-sensitive actions; proceed with safe read-only discovery.
```
