function fish_prompt
    set_color -b black
    set_color red
    echo -n '% '
    set_color cyan
    echo -n $USER
    set_color white
    echo -n ' at '
    set_color yellow
#    echo -n ' '
#    echo -n $FISH_AWD
    __sf_util_truncate_dir "$PWD" "3"
    set_color red
    echo -n ' '
    set_color normal
    set_color green
    echo -n ' > '
### echo -n ''
    set_color normal
    echo -n ' ' 
end
