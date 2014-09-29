# A Theme based on 'ys' but tweaked to my prefererred colors.
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
#
# Colors: black, red, green, yellow, blue, magenta, cyan, and white.
#
# Jul 2013 mine

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}on%{$reset_color%} %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}æ"

# Prompt format: \n USER at MACHINE in DIRECTORY on git:BRANCH STATE \n $
PROMPT="
%{$fg[red]%}%n \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$fg[blue]%}${current_dir}%{$reset_color%}\
%{$git_info%}
%{$terminfo[bold]$fg[magenta]%}$ %{$reset_color%}"

# %{$terminfo[bold]$fg[blue]%}${current_dir}%{$reset_color%}\
