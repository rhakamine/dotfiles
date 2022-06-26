#!/bin/bash

# If not in a tmux session, create it.
# If in a tmux session, detach and create one for the TS session
if [ -z "${TMUX}" ]; then
	tmux new-session -d -s ts
else
    tmux detach -s rhakamine
	tmux new-session -d -s ts
fi

tmux send-keys -t ts:0 "remmina -c $HOME/.local/share/remmina/ts.remmina" ENTER
