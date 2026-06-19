# Example: Prune A Stale Tool-Surface Assumption

Incident:

```text
A planning skill treated Linear issue creation as `linear issue create`.
The active environment had valid Linear access through documented GraphQL credentials, but no Linear CLI.
```

Symptom:

Agents checked the wrong surfaces, concluded Linear was unavailable, and created a local issue-plan artifact instead of using the configured tracker.

Finding:

The instruction encoded a tool shape, not the durable capability. That stale assumption created an autoimmune failure: the agent obeyed the rule, but the rule pushed it away from the working integration.

Better instruction:

```text
Create Linear issues through the available documented interface: connector, MCP tool, direct API/GraphQL credentials, or a documented local CLI. Do not treat a missing CLI, env var, or MCP server as proof that Linear is unavailable.
```

Why:

This preserves the useful behavior, creating tracker issues, while pruning the brittle assumption about which tool surface must exist.
