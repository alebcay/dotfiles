function alias_cascade() {
    local a="$1"
    shift

    while [[ $# -ne 0 ]]; do
        local p="$1"
        if [ -e "$p" ]; then
            eval "alias ${a}=\"${p}\""
            return
        fi
        shift
    done
}

alias cask="brew cask"
alias androidscreen="(adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g') | imgcat"
alias_cascade ls "$(brew --prefix)/opt/coreutils/libexec/gnubin/ls"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias bbfpr="brew bump-formula-pr --no-browse"
alias bbcpr="brew bump-cask-pr --no-browse"
alias line="lima nerdctl"

alias_cascade code "/Applications/VSCodium.app/Contents/Resources/app/bin/codium" \
                   "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" \
                   "${HOME}/AppImages/vscodium.appimage"

unset -f alias_cascade
