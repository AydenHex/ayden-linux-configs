# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin

ANTIDOTE_HOME="${HOME}/.antidote"

if [ ! -d "${ANTIDOTE_HOME}" ]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git ${ANTIDOTE_HOME}
fi

ZSH_PLUGINS=${HOME}/.zsh_plugins
if [ ! -d "$ZSH_PLUGINS" ]; then
  mkdir $ZSH_PLUGINS
fi

[[ -f ${ZSH_PLUGINS}.txt ]] || touch ${ZSH_PLUGINS}.txt

fpath=("$ANTIDOTE_HOME/functions" $fpath)
autoload -Uz antidote

if [[ ! ${ZSH_PLUGINS}.zsh -nt ${ZSH_PLUGINS}.txt ]]; then
  antidote bundle <${ZSH_PLUGINS}.txt >|${ZSH_PLUGINS}.zsh
fi

source ${ZSH_PLUGINS}.zsh

autoload -U compinit && compinit

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' mather-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

alias ls='ls --color'
alias c='clear'

eval "$(fzf --zsh)"i
eval "$(zoxide init --cmd cd zsh)"

