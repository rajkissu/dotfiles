#!/bin/bash

BASE="$HOME"

# TODO: only create the session if it doesn't exist!
tmux new-session -d -s mcoder

cd "$BASE/repos/flight-office"

tmux rename-window -t mcoder:0 'fo'    # rename the main window to 'fo'
tmux new-window -t mcoder:1 -n 'mongo' # create a new window for 'mongo'

tmux split-window -h -t mcoder:0 # split the main window horizontally
tmux split-window -v -t mcoder:0 # split the main window vertically
tmux select-pane -t 0            # select the first pane

# set directories for each window
tmux send -t mcoder:0 "cd $BASE/repos/flight-office; vim package.json" C-m
tmux send -t mcoder:2 "cd $BASE/Code/mongo-test" C-m

tmux select-window -t mcoder:0 # select the first window

# attach the session and run
tmux attach-session -t mcoder
