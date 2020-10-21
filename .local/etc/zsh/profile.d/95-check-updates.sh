#!/bin/sh

DOTFILES_DIR=~/.local/src/dotfiles

cd "$DOTFILES_DIR" || exit 1;
git status > /dev/null 2>&1 || exit 2;

{
	LOCAL="$(git rev-parse '@')" &&
	REMOTE=$(git rev-parse '@{u}') &&
	BASE=$(git merge-base "$LOCAL" "$REMOTE")
} || exit 3;

if [ "$LOCAL" = "$REMOTE" ]; then
	: # Up to date.
elif [ "$LOCAL" = "$BASE" ]; then
	echo "You can update your dotfiles!";
elif [ "$REMOTE" = "$BASE" ]; then
	: # New unpushed commits.
fi

cd - > /dev/null 2>&1
