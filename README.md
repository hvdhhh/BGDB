# BGDB — Projects & Cloud AI Workspace

This repository belongs to the GitHub account `hvdhhh`. BGDB AI Workspace is a GitHub Codespaces Linux development environment. No Mac or self-hosted VM is required.

## Codespaces — first launch

1. Open https://github.com/hvdhhh/BGDB
2. Select **Code → Codespaces → Create codespace on main**, or use https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=1427184616
3. The `.devcontainer/devcontainer.json` installs Node.js and runs `.devcontainer/setup-ai-tools.sh` to install the Codex and Claude Code CLIs.
4. Open the integrated terminal and verify `codex --version` and `claude --version`.
5. Run `codex` and `claude` and complete interactive authentication with the appropriate accounts.

## Fix for Codespaces created before the nvm/npm repair

An earlier setup accidentally wrote a `prefix` property in `~/.npmrc`, which conflicts with nvm. The script has been corrected to install the CLIs locally without setting a global npm prefix. If a Codespace was created before this fix, run **one command** in its terminal:

```bash
git pull --ff-only && bash .devcontainer/setup-ai-tools.sh
```

The command updates the files, cleans up only the legacy npm prefix/globalconfig settings, installs both CLIs inside Codespaces, and displays their versions. Do not run it with `sudo`. The script does not sign in to either provider; authentication is interactive.

## Scope, limitations and costs

This repository is the development workspace, **not** the completed autonomous AI task dispatcher. Installing the CLIs does not by itself connect Codex and Claude Code or authorize the manager to schedule them. Delegation, Git branches and pull requests, approval gates, and reporting back to ChatGPT will be implemented and tested separately.

GitHub Codespaces compute/storage has its own quota and billing, separate from ChatGPT Plus and Claude Pro. Never commit access tokens, API keys or passwords into this public repository.

The **SSL/TLS Security Scanner** remains in the other connected account at https://github.com/ykinfohome7/BGDB; keep the two repositories and credentials separate.
