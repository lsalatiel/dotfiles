#!/bin/zsh

# Define the directory to start searching from
start_directory="$HOME/code/"

# Use find and fzf to interactively select a directory
selected_directory=$(find "$start_directory" -type d -not -path '*/\.*' -not -path '*/@*' -not -path '*/node_modules*' -not -path '*/src*' -not -path '*/include*' -not -path '*/testes*' -not -path '*/prog1*' -not -path '*/prog2*' 2>/dev/null | fzf +m)

# Check if a directory was selected
if [ -n "$selected_directory" ]; then
    # Change to the selected directory
    if { [ "$TERM_PROGRAM" = "tmux" ] && [ -n "$TMUX" ]; } then
        tmux new-window -c "$selected_directory"
    else
        tmux new -c "$selected_directory"
    fi
else
    echo "No directory selected."
fi

