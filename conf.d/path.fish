set tool_paths
set -a tool_paths $HOME/.cargo/bin
set -a tool_paths $HOME/go/bin
set -a tool_paths $HOME/.docker/bin
set -a tool_paths $HOME/.config/emacs/bin

set home_paths
set -a home_paths $HOME/.local/bin
set -a home_paths $HOME/bin

for p in $tool_paths $home_paths
    if test -d $p
        fish_add_path -g $p
    end
end
