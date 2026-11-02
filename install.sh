#!/usr/bin/env bash
# Installs the Bugdini skill for Claude Code and Codex (whichever you have).
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)/skills"
for dir in "$HOME/.claude/skills" "$HOME/.codex/skills"; do
  mkdir -p "$dir"
  rm -rf "$dir/bugdini"
  cp -R "$here/bugdini" "$dir/"
  echo "Installed Bugdini in $dir/bugdini"
done
echo "Restart Claude Code / Codex, then say: Bugdini, read my fortune."
