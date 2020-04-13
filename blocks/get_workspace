#!/bin/sh
i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2
