alias cask="brew cask"
alias androidscreen="(adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g') | imgcat"
alias ls="$(brew --prefix)/opt/coreutils/libexec/gnubin/ls --color=auto -CFGhp"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias bbfpr="brew bump-formula-pr --no-browse"
alias bbcpr="brew bump-cask-pr --no-browse"
alias line="lima nerdctl"

if [ -e "/Applications/VSCodium.app/Contents/Resources/app/bin/codium" ]; then
    alias code="/Applications/VSCodium.app/Contents/Resources/app/bin/codium"
elif [ -e "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ]; then
    alias code="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
fi