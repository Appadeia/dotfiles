#
# Truncate directory
#

function __sf_util_truncate_dir -a path truncate_to -d "Truncate a directory path"
	if test "$truncate_to" -eq 0
		echo $path
	else
		set realhome ~
		set -l path (string replace -r '^'"$realhome"'($|/)' '~$1' $PWD)
		set -l folders (string split / $path)
		set -l join (string join / $folders)
		set -l truncate  (string join / $folders[(math 0 - $truncate_to)..-1])
#		echo
#		echo -n "join: "
#		echo $join
#		echo
#		echo -n "truncate: "
#		echo $truncate
#		echo
#		if [ $join != $truncate ]
#			echo -n "~/.../"			
#		end
		set -l fold (math (count $folders) - 1)
		if test (count $folders) -le "$truncate_to"
			echo -n $path
		else
			if string match -q -- "*~*" $folders
				echo -n "~"
			end
			if test $fold -eq "$truncate_to"
				echo -n "/"
			else
				echo -n "/.../"
			end
			echo -n (string join / $folders[(math 0 - $truncate_to)..-1])
		end
	end
end
