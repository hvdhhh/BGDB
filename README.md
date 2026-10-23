# BGDB — Projects & Cloud AI Workspace

This repository belongs to the GitHub account `hvdhhh`. The **BGDB AI Workspace** is prepared for GitHub Codespaces so there is no need for a local Mac, Linux VM, or Windows install.

## First launch

1. Open https://github.com/hvdhhh/BGDB
2. Select **Code → Codespaces → Create codespace on main** (or open https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=1427184616).
3. Wait for the dev container to initialize. It installs Node.js, the OpenAI Codex CLI, and Claude Code CLI within the Codespace using `.devcontainer/setup-ai-tools.sh`.
4. Open **Terminal** and run `codex --version`, then `claude --version`.
5. Run `codex` and `claude` separately to sign in with the user's existing ChatGPT Plus and Claude Pro subscriptions. The login flow may require browser authorization or other manual authentication.

**Status:** Configuration is committed; a Codespace has not been started or verified yet. An interactive first login is still necessary. If any post-create installation fails, inspect the Codespaces creation logs and re-run `bash .devcontainer/setup-ai-tools.sh` in the Codespace terminal.

**Costs:** GitHub Codespaces has its own quota/usage billing; ChatGPT and Claude subscriptions do not pay GitHub compute fees. Keep track of Codespaces consumption. Do not put API keys, passwords, tokens or private data in this public repository.

## Scope and boundaries

This workspace is the initial *development environment*, not an autonomous manager yet. Installing Codex and Claude Code does not automatically enable delegation between them. We will separately implement and test a task dispatcher, GitHub branch/PR workflow, approval gates, and status reporting to ChatGPT.

Our separate security scanner remains in https://github.com/ykinfohome7/BGDB (GitHub account `ykinfohome7`, linked as BGDB INFO). Do not merge the two repositories or copy their credentials without explicit project-specific instructions.
