function truncate-dir
    	switch $PWD
        case $HOME*
            set DIR_PREPEND "~/"
            set TRUNICATE_NUM 5
        case '*'
            set DIR_PREPEND ""
            set TRUNICATE_NUM 3
        end
    if [ (echo "$PWD" | cut -f$TRUNICATE_NUM- -d'/' | wc -c) -gt 20 ]
        set DIR_ENDING (echo "$PWD" | rev | cut -f1-2 -d'/' | rev)
        echo -n " "
	echo -n $DIR_PREPEND
	echo -n ".../"
	echo -n $DIR_ENDING
    else
        echo -n " %~ "
    end
end
