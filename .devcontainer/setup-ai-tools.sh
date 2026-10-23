#!/usr/bin/env bash
set -euo pipefail

# Installs inside the GitHub Codespace only, not on a local computer.
# Never commit passwords or API keys into this repository.
mkdir -p "$HOME/.npm-global"
npm config set prefix "$HOME/.npm-global"
export PATH="$HOME/.npm-global/bin:$PATH"
if ! grep -Fq 'BGDB_CODESPACES_NPM' "$HOME/.bashrc"; then
  printf '\n# BGDB_CODESPACES_NPM\nexport PATH="$HOME/.npm-global/bin:$PATH"\n' >> "$HOME/.bashrc"
fi

npm install --global @openai/codex @anthropic-ai/claude-code
printf '\nCodex CLI:\n'
codex --version
printf '\nClaude Code CLI:\n'
claude --version
printf '\nSign in interactively using "codex" and "claude".\n'
