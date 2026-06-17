# Nemo — Claude Code plugin marketplace

Public marketplace for the **Nemo** persistent-memory plugin. Contains only the
plugin (MCP connector config, hooks, commands) — **no server source code**.

## Install

```
/plugin marketplace add <owner>/<repo>      # this repo
/plugin install nemo@nemo
```

Restart Claude Code, approve the `nemo` MCP server, and complete OAuth sign-in
(your manager emails you a one-time login code). See `plugins/nemo/README.md`.

The plugin connects to the hosted Nemo server at `https://burnt.ovh/mcp`; auth is
OAuth, handled by Claude Code. Nothing sensitive lives in this repo.
