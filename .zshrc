# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#######################
#       ALIAS         #
#######################       

## set zinit directory

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

#download zinit if not yet downloaded
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

## source
source "${ZINIT_HOME}/zinit.zsh"

#add powerlvl
zinit ice depth=1; zinit light romkatv/powerlevel10k

#zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions 
zinit light Aloxaf/fzf-tab
# Load and initialise completion system
autoload -U compinit && compinit

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
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

#Completion config
#
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



## Neovim
alias v="nvim"
alias clear_nvim="rm -rf ~/.local/share/nvim"

##clear
alias cl="clear"

## lists
alias ll="lsd -la"
alias ls='ls --color'

## gits
alias ga="git add"
alias gst="git status"
alias gc="git commit -m"
alias gp="git push"
alias glgg="git log --graph --oneline --decorate"
alias fd='fdfind'
alias ccf='cc -Wall -Wextra -Werror -g '

## exit terminal
alias x="exit"


# Suppress zsh compinit insecure directory warning
zstyle ':compaudit' warn no

#[ -d "$HOME/sgoinfre/Homebrew/bin" ] &&
#export PATH="$PATH:$HOME/sgoinfre/Homebrew/bin"
#export PATH="$HOME/.local/bin:$PATH"


if [[ -f ~/.config/google-chrome/Singleton* ]]; then
	rm -rf ~/.config/google-chrome/Singleton*
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

