# Nemo — Claude Code plugin

Persistent, concept-oriented memory for Claude Code. Wires the Nemo remote MCP
connector (OAuth) and makes memory automatic:

- **MCP connector** `nemo` → `https://burnt.ovh/mcp`. Claude Code runs the OAuth
  flow on first use (browser → enter the one-time code emailed to you). No tokens
  to paste.
- **SessionStart hook** → injects a directive so the agent calls `boot` (loads your
  profile + core memory + the memory policy) at the start of every session.
- **UserPromptSubmit hook** → reminds the agent to `recall` when a prompt needs
  context, so memory is used by default.
- **Commands**: `/nemo:recall <query>`, `/nemo:profile [change]`.

## Install (for a Nemo user)

```
/plugin marketplace add <owner>/<repo>     # the repo hosting this marketplace
/plugin install nemo@nemo
```

Restart Claude Code, then approve the `nemo` MCP server and complete the OAuth
sign-in (email → code). Your manager creates your member + emails the login code.

## Tools exposed

`boot`, `recall`, `remember`, `recall_passages`, `fact_passages`, `ingest`,
`correct`, `forget`, `update_profile`.

## Notes

- The hooks only inject text directives; the actual (authenticated) tool calls are
  made by the model via the OAuth'd MCP connection — the hooks never handle tokens.
- To change the server URL, edit `.mcp.json`.
- Legacy local stdio bridge (`scripts/connect-claude.sh`) still works for offline
  use, but the plugin path (remote + OAuth) is preferred.
