fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/rustup/bin

if test -d $HOME/.local/bin
    fish_add_path $HOME/.local/bin
end
if test -d $HOME/bin
    fish_add_path $HOME/bin
end