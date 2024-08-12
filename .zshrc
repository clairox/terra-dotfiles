
# The following lines were added by compinstall

zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/clairox/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Find and set branch name var if in git repository
function git_branch_name()
{
	branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
	if [[ $branch == "" ]];
	then
		:
	else
		echo '- ('$branch')'
	fi
}

# Enable substitution in the prompt
setopt prompt_subst

# Config for prompt. PS1 synonym
PROMPT='%n@%m %~ $(git_branch_name)> '
