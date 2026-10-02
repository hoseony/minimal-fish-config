function helpfish --description "Show a tiny Fisherman's handbook"
    set_color brcyan --bold
    echo 'A tiny Fisherman\'s handbook'
    set_color normal

    echo '  Right Arrow   accept the gray autosuggestion'
    echo '  Alt-Right     accept one word of the autosuggestion'
    echo '  Tab           complete a command, option, or path'
    echo '  Up / Down     search through matching history'
    echo '  Ctrl-R        search all command history'
    echo '  Ctrl-C        cancel the current command'
    echo '  Ctrl-L        clear the screen'
    echo

    set_color brcyan
    echo 'Handy abbreviations'
    set_color normal
    echo '  ll             list everything with details'
    echo '  .. / ...       move up one or two directories'
    echo '  gs             show Git status'
    echo '  gd             show Git changes'
    echo '  They expand visibly before running—try one!'
    echo

    if type -q fzf
        set_color brcyan
        echo 'With fzf'
        set_color normal
        echo '  Ctrl-T        find and insert a file'
        echo '  Alt-C         find and enter a directory'
        echo
    end

    if type -q zoxide
        set_color brcyan
        echo 'With zoxide'
        set_color normal
        echo '  z NAME        jump to a familiar directory'
        echo '  zi NAME       choose a directory interactively'
    end

    echo
    echo 'Try `help` for the complete Fish documentation.'
end
