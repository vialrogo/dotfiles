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

alias svn "svn --config-dir $XDG_CONFIG_HOME/subversion"
alias wget "wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
alias vpn_sabesp="cat ~/Documents/vpn_sabesp_password.txt | sudo openconnect https://vpn.sabesp.com.br --useragent=AnyConnect --user=vgonzalez.fcth --authgroup=VPN_Terceiros --passwd-on-stdin"
# alias vpn_sabesp="echo \"\$44Snha44\$\" | sudo openconnect https://vpn.sabesp.com.br --useragent=AnyConnect --user=vgonzalez.fcth --authgroup=VPN_Terceiros --passwd-on-stdin"
