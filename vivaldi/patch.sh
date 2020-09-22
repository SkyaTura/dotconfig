#!/bin/bash

here=$(pwd)
# Quit Vivaldi
osascript -e 'quit app "Vivaldi.app"'

# Find path to Framework folder of current version and save it as variable
findPath="`find /Applications/Vivaldi.app -name Vivaldi\ Framework.framework`"

# Save path to browser.html as variable
browserHtml="$findPath"/Resources/vivaldi/browser.html

# Insert references, if not present, and save to temporary file
sed 's|  </head>|    <link rel="stylesheet" href="custom/custom.css" /></head>|;s|  </body>|    <script src="custom/index.js"></script></body>|' "$browserHtml" > "$browserHtml".temp

# Backup original file
cp "$browserHtml" "$browserHtml".bak

# Overwrite
mv "$browserHtml".temp "$browserHtml"

# Pause script
read -rsp $'Press [Enter] to restart Vivaldi...\n'

# Open Vivaldi
open /Applications/Vivaldi.app
