# From http://karolis.koncevicius.lt/posts/fast_navigation_in_the_command_line/
export MARKPATH=$HOME/.marks


function mark
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$argv"
end


function unmark
    rm -i "$MARKPATH/$argv"
end


function marks
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/    \t-/g' && echo
end
