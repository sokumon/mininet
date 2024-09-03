# sudo apt-get install inotify-tools
#!/bin/bash

# File to watch
WATCHED_FILE="path/to/your/file"

# Commands to execute
COMMANDS="sudo make && sudo make install"

# Monitor the file for modifications
inotifywait -m -e modify "$WATCHED_FILE" | while read path action file; do
    echo "File $file modified, running commands..."
    $COMMANDS
done

# chmod +x /path/to/your/script.sh
# /path/to/your/script.sh &