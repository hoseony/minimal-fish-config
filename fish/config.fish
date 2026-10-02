# Welcome to the Cooper Union Microlab's Fish config! 
# Learn more about it at https://fishshell.com/.

# Fish is a smart and friendly shell with syntax highlighting, autosuggestions,
# and nice tab completion without any configuration unlike bash or zsh.

# A little greeting for every new Fish. You can remove it if you really want to :(
function fish_greeting
    set_color brcyan
    printf '\n ◈  COOPER UNION MICROLAB | Now with FISH ◈ \n\n'
    set_color normal
end

# Uncomment this line for Vim-style command-line key bindings.
# fish_vi_key_bindings

# Everything below is for interactive shells
if status is-interactive
    # Keep Microlab history in its own little pond.
    set -g fish_history cooper_microlab

    # some colors
    set -g fish_color_command brcyan --bold
    set -g fish_color_quote brgreen
    set -g fish_color_error brred --bold
    set -g fish_color_autosuggestion brblack
    set -g fish_color_search_match --background=brblack

    # Fuzzy-search. This works automatically when fzf is installed.
    # ** AIDAN, INSTALL IT GLOBALLY OR MAKE A GUIDE HERE FOR INSTALLATION **
    # Ctrl-R searches history, Ctrl-T fishes for files, and Alt-C finds directories.
    if type -q fzf
        set -gx FZF_DEFAULT_OPTS \
            '--height=40% --layout=reverse --border=rounded'
        fzf --fish | source
    end

    # Jump to familiar directories with z. This is improvement of cd
    if type -q zoxide
        zoxide init fish | source
    end
end
