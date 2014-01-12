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
alias ec="emacsclient -c -n"
# open new terminal client
alias et="emacsclient -t"

## general aliases
alias code="cd ~/code"
alias ohmyzsh="et ~/.oh-my-zsh"
alias zshconfig="et ~/.zshrc"
alias reload="source ~/.zshrc"
alias git="hub"
alias mux="tmuxinator"

plugins=(
    git ruby rbenv bundler gem rake rails heroku vagrant
    thor tmux tmuxinator zsh-syntax-highlighting emacs
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

# set variables
export TERM=xterm-256color
export EDITOR=emacs
# ls colors see ```man ls```
export LSCOLORS=Exfxcxdxbxegedabagacad
