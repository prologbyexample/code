# https://alvinalexander.com/source-code/mac-os-x/how-size-or-resize-application-windows-applescript/

tell application "Safari"
    set bounds of front window to {0, 0, 1280, 1024}
end tell