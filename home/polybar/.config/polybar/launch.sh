#!/usr/bin/env sh

polybar-msg cmd quit

for m in $(polybar --list-all-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done

