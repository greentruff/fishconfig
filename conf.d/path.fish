
if test -d $HOME/.local/bin
    fish_add_path -g $HOME/.local/bin
end

if test -d $HOME/bin
    fish_add_path -g $HOME/bin
end

if test -d $HOME/.cargo/bin
    fish_add_path -g $HOME/.cargo/bin
end