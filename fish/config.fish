function __fish_command_not_found_handler --on-event fish_command_not_found
    command-not-found $argv[1]
end
#set LS_COLORS (ls_colors_generator)
function blur 
	xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0
end
function ls
    /usr/bin/ls --color=auto -w (tput cols) $argv
end
function init
    zsh -c "source ~/.zshrc; source ~/.zsh_aliases; ls; fish"
end
#set LS_COLORS (ls_colors_generator)
#set LS_COLORS (ls_colors_generator)
set DISTDIR /usr/portage/distfiles
set PKGDIR /usr/portage/packages
set PORTAGE_CONFIGROOT /
set PORTAGE_TMPDIR /var/tmp
set PORTDIR /usr/portage
