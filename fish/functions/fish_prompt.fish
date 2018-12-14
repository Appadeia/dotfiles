function fish_prompt
    set sstatus $status
	__sf_util_set_default SPACEFISH_PROMPT_FIRST_PREFIX_SHOW false
	__sf_util_set_default SPACEFISH_PROMPT_PREFIXES_SHOW true
	__sf_util_set_default SPACEFISH_PROMPT_SUFFIXES_SHOW true
	__sf_util_set_default SPACEFISH_PROMPT_DEFAULT_SUFFIX " "
    set -g SPACEFISH_GIT_SUFFIX " "
    set_color red
    echo -n '% '
    set_color cyan
    echo -n $USER
    set_color white
    echo -n ' at '
    set_color yellow
#    echo -n ' '
#    echo -n $FISH_AWD
    pretty "$PWD" "3"
    set_color red
    echo -n ' '
    __sf_section_git
    set_color normal
    if test $sstatus -eq 0
	set_color green
    else
    	set_color red
    end
    echo -n ' > '
### echo -n ''
    set_color normal
    echo -n ' ' 
end
