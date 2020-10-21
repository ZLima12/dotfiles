#!/bin/sh

DOTFILES_DIR=~/.local/src/dotfiles

if SSH_AGENT_FILE="$(find ~/.local/share/keychain -name '*-sh')"; then
	. "$SSH_AGENT_FILE" ||
		echo "Failed to source file: $SSH_AGENT_FILE";
fi

cd "$DOTFILES_DIR" || exit 1;
git fetch --all;
