#!/bin/bash
file="$1"
line="$2"
context=20

start=$((line - context))
[[ $start -lt 1 ]] && start=1
end=$((line + context))

bat --style=numbers --color=always "$file" --highlight-line "$line" --line-range "$start:$end"
