ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

alias code="cd ~/Code"
alias zshconfig="emacs ~/.zshrc"
alias reload="exec $SHELL -l"
alias git="hub"
alias mux="tmuxinator"
alias ek="emacsclient -e \(kill-emacs\)"

export EDITOR="emacsclient --alternate-editor '' --no-wait"

fpath=(~/.zsh/completion $fpath)
# for function in ~/.zsh/functions/*; do
#     source $function
# done

if which hub > /dev/null; then eval "$(hub alias -s)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

[ -e "$HOME/.dircolors" ] && eval "$(dircolors $HOME/.dircolors)"
[ -z "$TMUX" ] && export TERM=xterm-256color

plugins=(
    git ruby rbenv bundler gem rake rails heroku vagrant
    tmux tmuxinator zsh-syntax-highlighting emacs
)

source $ZSH/oh-my-zsh.sh
