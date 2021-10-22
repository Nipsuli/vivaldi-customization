#!/bin/bash

cp ./extensions-to-panes.js /Applications/Vivaldi.app/Contents/Frameworks/Vivaldi\ Framework.framework/Versions/Current/Resources/vivaldi/

browser_path=/Applications/Vivaldi.app/Contents/Frameworks/Vivaldi\ Framework.framework/Versions/Current/Resources/vivaldi/browser.html

if ! grep -q "extensions-to-panes.js" "${browser_path}"; then
  sed -i -- '/src="bundle.js"/a\
\ \ \ \ <script src="extensions-to-panes.js"></script>
' "${browser_path}"
fi
