# The following lines were added by compinstall (and later edited by hand)

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' format '(Completing %d)'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "${XDG_CONFIG_HOME}/zsh/.zshrc"

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump"
# End of lines added by compinstall
# Lines configured by zsh-newuser-install (and later edited by hand)
HISTFILE="${XDG_CACHE_HOME}/zsh/histfile"
HISTSIZE=10000
SAVEHIST=10000
setopt notify
unsetopt beep
setopt inc_append_history
bindkey -v
# End of lines configured by zsh-newuser-install

PROMPT="%n@%m %~ %?> "

for file in ${ZDOTDIR}/profile.d/*;
do
	source "$file";
done
