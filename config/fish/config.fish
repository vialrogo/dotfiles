if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
    alias ls "exa -g --icons"
    alias lt "exa -g --icons --tree"
    alias ll "exa -l -g --icons"
    alias la "exa -la -g --icons"
end

if type -q tmux
    alias stmux "tmux new -A -s fish"
end

set -U fish_greeting ""
set TERM 'xterm-256color'
set PAGER '/usr/bin/most -s'
