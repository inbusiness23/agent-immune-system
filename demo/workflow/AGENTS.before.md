# Agent Instructions

## Shell

- Never run commands without asking the user first.
- Always ask before reading files.
- Never inspect repo files unless the user gives explicit approval.
- Stop and ask before using `rg`.

## Git

- Always check the branch before editing.
- Always verify git status before editing.
- Do not edit main.
- Stop if the worktree is dirty.
- Never touch unrelated files.
- Check for active sessions before edits.
- Do not continue if another agent might be in the same directory.

## Browser Proof

- Always produce mobile browser proof for every visual change.
- Always create a gallery for screenshots.
- Always create a video proof bundle.
- Always use S1/V1/C1/R1 IDs for all review artifacts.

## Session Learning

- If an agent makes a mistake, add a new permanent rule to this file.
- Never delete old rules unless David explicitly asks.
