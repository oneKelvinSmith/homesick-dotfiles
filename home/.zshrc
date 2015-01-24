ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mine"

## syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

## general aliases
alias code="cd ~/Code"
alias ohmyzsh="emacs ~/.oh-my-zsh"
alias zshconfig="emacs ~/.zshrc"
alias muxconfig="emacs ~/.tmux.conf"
alias reload="exec $SHELL -l"
alias git="hub"
alias mux="tmuxinator"

## emacs aliases
alias ek="emacsclient -e \(kill-emacs\)"

# editor variables
export VISUAL="emacsclient"
export ALTERNATE_EDITOR="emacs"

# git and hub completions
fpath=(~/.zsh/completion $fpath)

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH

# emacs prelude
export PRELUDE_INSTALL_DIR="$HOME/.emacs.d"
export PRELUDE_URL="https://github.com/oneKelvinSmith/prelude.git"

# hub setup
if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# rbenv setup
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

# heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# colorful terminal
[ -z "$TMUX" ] && export TERM=xterm-256color

# allow tmuxinator window titles
export DISABLE_AUTO_TITLE=true

# ls colors see ```man ls```
export LSCOLORS=Exfxcxdxbxegedabagacad

plugins=(
    git ruby rbenv bundler gem rake rails heroku vagrant thor
    pyenv tmux tmuxinator middleman zsh-syntax-highlighting emacs
)

source $ZSH/oh-my-zsh.sh
