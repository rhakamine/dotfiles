#!/bin/bash

sleep 5
xdotool type "$(xclip -o -selection clipboard)"
