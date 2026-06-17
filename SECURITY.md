# Security

Agent Immune System reviews instruction files and governance artifacts. It should not inspect or copy secrets.

Do not include:

- API keys
- shell history
- keychain exports
- private credentials
- `.env` values
- access tokens
- private transcripts containing secrets

Report security issues privately to the maintainer rather than opening a public issue with sensitive details.
