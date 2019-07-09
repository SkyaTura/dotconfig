#!/bin/bash

stage="$1"
list="$2"
item="$3"
window_zoomed_flag="$4"

function list_contains () {
  if [[ $list =~ (^|[[:space:]])"$item"($|[[:space:]]) ]] ; then
    # yes, list include item
    return 0
  else
    return 1
  fi
}

function zoom () {
  tmux resize-pane -Z -t $item
}

function zoom_in () {
  tmux set-environment zoomed_panes "$list $item"
}
function zoom_out () {
  local new_var=${list//" $item"/}
  tmux set-environment zoomed_panes "$new_var"
}

function toggle_zoom () {
  `list_contains '$list' '$item'` && zoom_out || zoom_in
}

function gain_focus () {
  `list_contains '$list' '$item'` && zoom
}

if [ "$stage" = "toggle_zoom" ]; then
  zoom
  toggle_zoom
elif [ "$stage" = "gain_focus" ]; then
  if [ "$window_zoomed_flag" = "0" ]; then
    gain_focus
  fi
fi

exit 0
