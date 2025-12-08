# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="af-magic-mine"
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Which plugins would you like to load?
plugins=(brew composer git git-flow-avh heroku)
plugins+=(node npm pip virtualenv)
plugins+=(docker)

autoload -U compinit && compinit

source ${ZSH}/oh-my-zsh.sh

# Customize to your needs...
export GOPATH=${HOME}/projects/go/work
export JAVA_HOME=$(/usr/libexec/java_home)

PYTHON_HOME=$(brew --prefix python)/libexec/bin

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
PATH=${PATH}:/usr/local/git/bin:/usr/local/sbin
PATH=${PATH}:${HOME}/.composer/vendor/bin
PATH=${PATH}:/usr/local/opt/go/libexec/bin
PATH=${PATH}:${GOPATH}/bin
PATH=${PATH}:/opt/homebrew/opt/mysql-client/bin
PATH=${PATH}:${HOME}/.docker/bin
PATH=${PATH}:${JAVA_HOME}
PATH=${PATH}:${PYTHON_HOME}

export PATH=${PATH}
export DOTNET_ROOT=/opt/homebrew/opt/dotnet/libexec

# Setting the default editor
export EDITOR=nvim
export VISUAL=${EDITOR}

. ${HOME}/.env.mine

cdpath=(${HOME}/projects)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

