#!/bin/bash

here=$(pwd)
# Quit Vivaldi
osascript -e 'quit app "Vivaldi.app"'

# Find path to Framework folder of current version and save it as variable
findPath="`find /Applications/Vivaldi.app -name Vivaldi\ Framework.framework`"

# Copy custom files to Vivaldi.app
find custom -type d -exec mkdir -p "$findPath"/Resources/vivaldi/{} \;
find custom -type f -exec ln "$here"/{} "$findPath"/Resources/vivaldi/{} \;
