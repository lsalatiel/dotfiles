export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME=cdimascio-lambda
# ZSH_THEME="refined"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# tmux fzf aliases
alias f="$HOME/.scripts/tmux_fzf.sh"
bindkey -s ^f "f\n"

alias a="$HOME/.scripts/tmux_fzf_currdir.sh"
bindkey -s ^a "a\n"

alias k="$HOME/.scripts/vim"
bindkey -s ^k "fzf | k\n"

# alacritty font size switch
alias sf="python ~/.scripts/toggle_alacritty_font.py"

# select wallpaper script alias
alias sw="python ~/.scripts/select_wallpaper.py"

# quick aliases
alias p="sudo pacman"
alias ..="cd .."
alias ls="exa --icons"
alias vim=nvim
alias ra="ranger"
alias q="exit"
alias vp="cd ~/.config/nvim/lua/user/plugins/"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias rc="vim ~/.config/awesome/rc.lua"
alias theme="vim ~/.config/awesome/default/theme.lua"
alias clock="tty-clock -c -C 7 -b"
alias xp="xrandr --output HDMI-1 --primary"

# git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias grm="git rm"
alias gsync="git fetch && git pull"

alias bright="xrandr --output eDP-1 --brightness"

# npm aliases
alias ni="npm install"
alias nrb="npm run build"
alias prettier="npx prettier . --write"

export PATH=$PATH:/home/salatiel/.config/spotifyc
# export PATH=$PATH:/home/salatiel/.spicetify
export EDITOR='nvim'
export VISUAL='nvim'
# fix colorscheme in neovi when in tmux
export TERM='xterm-256color'

# default browser
export BROWSER='firefox'
