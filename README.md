# copilot.fish

Simple fish functions that make GitHub Copilot CLI easier to use.

## Installation

```shell
fisher install atahanyorganci/copilot.fish
```

## Usage

Plugin providers following functions

- `gh_assist` for generating GitHub CLI commands from plain English
- `git_assist` for generating Git commands from plain English
- `what_the_shell` for generating shell commands from plain English

### Example

```shell
$ git_assist how do undo a commit

 ──────────────────── Command ────────────────────

git reset --soft HEAD~1

 ────────────────── Explanation ──────────────────

○ git reset resets the current branch to a previous commit.
  ◆ --soft means that we only discard the commit message, but not the changes made to the files.
  ◆ HEAD~1 specifies that we reset to the commit one before the current one.

> ✅ Run this command
  📝 Revise query
  ❌ Cancel
```
