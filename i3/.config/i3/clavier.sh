#!/bin/bash
echo "Changing keys..."

xmodmap -e 'keycode 51 = less greater bar brokenbar bar brokenbar'
xmodmap -e 'keycode 35 = dollar sterling bracketright braceright asterisk'

echo "The keys have been changed !"
echo

