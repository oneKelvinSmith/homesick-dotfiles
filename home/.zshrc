ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mine"

## syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

## emacs aliases
alias ed="emacs --daemon"
alias ek="emacsclient -e \(kill-emacs\)"
# attach to existing client
alias e="emacsclient -n"
# open new gui client
alias ec="emacsclient -nc"
# open new terminal client
alias et="emacsclient -t"

## general aliases
alias code="cd ~/Code"
alias ohmyzsh="emacsclient -n ~/.oh-my-zsh"
alias zshconfig="emacsclient -n ~/.zshrc"
alias muxconfig="emacsclient -n ~/.tmux.conf"
alias reload="source ~/.zshrc"
alias git="hub"
alias mux="tmuxinator"

plugins=(
    git ruby rbenv bundler gem rake rails heroku vagrant thor
    tmux tmuxinator middleman zsh-syntax-highlighting emacs
)

source $ZSH/oh-my-zsh.sh

# git and hub completions
fpath=(~/.zsh/completion $fpath)

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH

# hub setup
if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# rbenv setup
export PATH=$HOME/.rbenv/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# editor variables
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -n"

# colorful terminal
[ -z "$TMUX" ] && export TERM=xterm-256color

# ls colors see ```man ls```
export LSCOLORS=Exfxcxdxbxegedabagacad
