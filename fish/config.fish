if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim=nvim
    alias notebook="jupyter notebook --no-browser --ip=0.0.0.0 --port=8989"

    # "bookmarking" folders for easier navigation
    . ~/scripts/bookmark.fish
    export CDPATH=.:$MARKPATH

    # Create tmux session for user or attach to user's session
    if test -z $(tmux ls | grep $(whoami))
        tmux new -s $(whoami)
    else
        tmux a -t $(whoami)
    end

    # Always use virtualenv's python, not system's python
    if test -z "$VIRTUAL_ENV"
        source ~/.config/envs/py/bin/activate.fish
    end
end
