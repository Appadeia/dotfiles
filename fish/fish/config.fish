function __fish_command_not_found_handler --on-event fish_command_not_found
    command-not-found $argv[1]
end
function blur 
	xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0
end
set LS_COLORS (ls_colors_generator)
