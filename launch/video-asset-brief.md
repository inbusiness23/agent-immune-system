# Agent Immune System Launch Video Asset Brief

## Core Hook

Your agent rules are making you slower.

## Primary Template

Model the video primarily after Linear's agent workflow demos: real work surfaces, human review, visible artifacts, and a direct path from problem to shipped outcome. Layer in Cursor's "demos over diffs" proof model and Sentry's incident-to-diagnosis-to-fix arc.

## Video Promise

In about 60-90 seconds, show a real developer workflow where Agent Immune System audits bloated rules, proposes a cleaner instruction set, the user applies the patch, and the replay completes 40% faster in the included deterministic demo fixture.

## Target Viewer

A technical founder, maintainer, or agent-heavy developer who has been adding rules to `AGENTS.md`, `CLAUDE.md`, or skill files every time a session goes sideways and now suspects the rule pile is slowing the agent down.

## Narrative Beats

1. **Diagnosis hook**
   - Text: "Your agent rules are making you slower."
   - Visual: Codex session hesitates under a crowded `AGENTS.md`.
   - Artifact: before file has duplicated safety rules, contradiction markers, and stale exception chains.

2. **Run the immune audit**
   - User prompt: `Use agent immune system to audit my AGENTS.md. Do not edit yet.`
   - Visual: realistic Codex chat with audit output.
   - Artifact: `Instruction Health Score`, findings, route decisions.

3. **Show agnostic support**
   - Quick cycle, 1-2 seconds each:
     - Claude Code: same command against `CLAUDE.md`.
     - Codex: same command against `AGENTS.md`.
     - Cursor: same command against `.cursor/rules` or project rules.
     - Terminal: hook/script output from `hooks/codex-instruction-hook.sh check`.
   - Text: "Works wherever your agent rules live."

4. **Human-approved repair**
   - User prompt: `Apply the recommended instruction-health patch.`
   - Visual: before/after diff replaces narrow scar rules with durable principles.
   - Artifact: removed duplicate rules, demoted proof workflow detail, regenerated worktree principle.

5. **Proof replay**
   - Visual: side-by-side code/task run.
   - Before: 8:20, 5 interruptions, 3 duplicate clusters, 2 autoimmune rules.
   - After: 5:00, 1 interruption, 0 duplicate clusters, 0 autoimmune rules.
   - Text: "40% faster in the demo replay."
   - Disclosure: "Deterministic demo fixture, not a universal benchmark."

6. **Open-source close**
   - Text: "Inspect the fixture. Run it on your own rules."
   - CTA: `Use agent immune system to audit my AGENTS.md.`

## Required On-Screen Assets

- Realistic Codex chat panel.
- `AGENTS.before.md` and `AGENTS.after.md` code panes.
- Audit table with finding, route, and reason.
- Diff panel with red removals and green regenerated principles.
- Compatibility strip: Claude Code, Codex, Cursor, Terminal.
- Benchmark fixture panel from `demo/workflow/benchmark.json`.
- GitHub/open-source close frame.

## Copy Bank

- "Your agent rules are making you slower."
- "A mistake is not automatically a rule."
- "Audit the rules before you add another one."
- "Detect bloat. Prevent autoimmunity. Regenerate cleaner instructions."
- "Works with AGENTS.md, CLAUDE.md, skills, Cursor rules, and terminal hooks."
- "Proposal-first. Human-approved. Open source."

## Visual Direction

Use realistic familiar Codex as the main environment. The supporting IDE/tool cycle should be recognizable but compressed: each tool is a proof flash, not a separate walkthrough. Use dark technical surfaces, crisp high-contrast code, restrained immune greens, and pragmatic workflow-first pacing.

## Avoid

- Generic animated dashboard cards.
- Abstract "AI magic" graphics.
- Overlong multi-tool tour.
- Claiming universal 40% speed improvement.
- Showing fake outputs that cannot be traced back to repo fixtures.

## Next HyperFrames Build Contract

Before rendering, the HyperFrames composition should include these checkpoints:

- The first 5 seconds establish the pain and hook.
- By second 15, the user has run the audit.
- By second 30, the findings and route decisions are visible.
- By second 42, the agnostic IDE/tool cycle has completed.
- By second 60, the patch has been applied and the diff is visible.
- Final 15-20 seconds show benchmark proof and open-source CTA.
