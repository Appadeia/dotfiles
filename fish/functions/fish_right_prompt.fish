function fish_right_prompt
    set sstatus $status
    set_color -b black
    set_color white
    switch $sstatus
    case 0
    	echo -n ''
    case '*'
    	echo -n '  '
	echo -n $sstatus
	echo -n ' '
    end
    echo -n ' '
    date '+%Y-%m-%d'
    echo -n ' '
    date '+%I:%M %p'
    echo -n ' '
    set_color normal
end
