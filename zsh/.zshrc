# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
  z 
  zsh-autosuggestions
  zsh-syntax-highlighting
  archlinux
  tmux 
  thefuck 
  sudo 
  ripgrep 
  qrcode 
  man 
  fzf 
  docker 
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Alias

alias l="eza -l --icons --tree --level=1 --group-directories-first"
alias l2="eza -l --icons --tree --level=2 --group-directories-first"
alias la="eza -l --icons --tree --level=1 --group-directories-first -a"
alias lg="eza -l --icons --tree --level=1 --group-directories-first |grep "

alias n="nvim "

alias q="exit"
alias :q="exit"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
