#!/bin/bash

# xdotool windowactivate $(xdotool search --name "^ranger$") \
#  && xdotool type ":cd ${1}" \
#  && xdotool key Return

echo "cd ${1}" >> /tmp/ranger-ipc.*
xdotool windowactivate $(xdotool search --name "^ranger$") \


# notes
# ranger explain
# ranger plugin
# elisp code
