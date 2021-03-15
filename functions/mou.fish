function mou -d "The missing Markdown editor for web developers"
  if set -l path (realpath $argv 2> /dev/null)
    echo "tell application \"Mou\"
            open \"$path\"
            activate
          end tell" | osascript >/dev/null 2>&1
  else
    echo "tell application \"Mou\" to activate" | osascript >/dev/null 2>&1
  end
end
