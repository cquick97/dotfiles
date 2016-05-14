export CLICOLOR=1

source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
	echo "Creating a new zgen save"

	zgen load djui/alias-tips
	zgen load unixorn/autoupdate-zgen

	zgen prezto
	zgen prezto completion
	zgen prezto git
	zgen prezto directory
	zgen prezto utility
	zgen prezto syntax-highlighting

	zgen prezto prompt theme 'sorin'

	zgen save
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
