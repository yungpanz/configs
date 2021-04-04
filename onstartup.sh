#!/bin/sh

session="working"

tmux new-session -d -s $session
tmux rename-window -t 0 'Main'
tmux send-keys -t 'Main' 'clear' C-m
tmux new-window -t $session:1
tmux send-keys -t $session:1 'clear' C-m

tmux attach-session -t $SESSION:0

exit 0
