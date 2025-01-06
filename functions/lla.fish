function lla --wraps='eza' --description 'Long file listing with hidden files'
    if type -q eza
        eza -l --git --group-directories-first --all $EZA_LA_OPTIONS $argv
    else
        ls -alh $argv
    end
end