#!/bin/bash

# remember to make this executable...

id=`python ~/.i3/id_list.py`
i3-msg [id="$id"] focus > /dev/null

