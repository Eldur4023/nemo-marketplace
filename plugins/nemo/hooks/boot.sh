#!/usr/bin/env bash
# SessionStart: nudge the model to load Nemo memory. The model does the actual
# (OAuth-authenticated) MCP call — this hook only injects the directive, so it
# needs no token of its own. stdout is added to the session context.
cat <<'EOF'
[Nemo persistent memory is connected]
- First, call the Nemo `boot` tool to load the user's profile, core memory, and the memory policy.
- Before answering anything about the user's preferences, stack, projects, decisions, conventions, or past work, call `recall` first.
- Save only DURABLE, reusable knowledge with `remember` (profile, decisions+rationale, conventions, stable facts, relationships, constraints). Never store the literal conversation, secrets/PII, or anything derivable from the code.
- Keep the user's profile current with `update_profile`.
EOF
