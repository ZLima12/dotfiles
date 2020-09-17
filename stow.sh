#!/bin/sh

if [ "$0" != "./stow.sh" ];
then
	echo "Please invoke this command from the directory it's in." 1>&2;
	exit 1;
fi

stow --ignore='\.git\/' --ignore='stow.sh' -d "$(dirname "$(pwd)")" -t "$HOME" "$(basename "$(pwd)")"
