#!/usr/bin/env bash

if ! pgrep -f "brave-browser" > /dev/null 2>&1; then
  open -a "/Applications/Brave Browser.app" 
else 
  script='tell application "brave-browser" to create window with default profile'
  ! osascript -e "${script}" > /dev/null 2>&1 && {
    while IFS="" read -r pid; do 
      kill -15 "${pid}"
    done < <(pgrep -f "brave-browser")
    open -a "/Applications/Brave Browser.app/"
  }
fi

