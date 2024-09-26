if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Change prompt if I am in a container (for distrobox)
if test -e /run/.containerenv -o -e /.dockerenv
  function fish_prompt -d "Write out the prompt"
    set_color brred
    printf '[%s] %s%s%s > ' $CONTAINER_ID (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  end
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

if type -q fzf
  if type -q bat
    alias fzf "fzf --preview='bat --color=always {}'"
  else
    alias fzf "fzf --preview='cat {}'"
  end
  fzf --fish | source
end

set -U fish_greeting ""
set -Ux TERM "xterm-256color"
set -Ux PAGER "/usr/bin/most -s"

#Environmental variables
set -Ux XDG_DATA_HOME "$HOME/.local/share"
set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux XDG_STATE_HOME "$HOME/.local/state"
set -Ux XDG_CACHE_HOME "$HOME/.cache"

# Output of xdg-ninja
set -Ux HISTFILE "$XDG_STATE_HOME/bash/history"
set -Ux CARGO_HOME "$XDG_DATA_HOME/cargo"
set -Ux CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -Ux GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -Ux GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -Ux JUPYTER_CONFIG_DIR "$XDG_CONFIG_HOME/jupyter"
set -Ux LESSHISTFILE "$XDG_CACHE_HOME/less/history" 
set -Ux ICEAUTHORITY "$XDG_CACHE_HOME/ICEauthority"
set -Ux MPLAYER_HOME "$XDG_CONFIG_HOME/mplayer"
set -Ux NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -Ux NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages" 
set -Ux _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -Ux PSQL_HISTORY "$XDG_DATA_HOME/psql_history"
set -Ux PYLINTHOME "$XDG_CACHE_HOME/pylint"
set -Ux WINEPREFIX "$XDG_DATA_HOME/wine"
set -Ux XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"
set -Ux XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority"

