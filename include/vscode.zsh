function vscode_search() {
    while [[ $# -ne 0 ]]; do
        local p="$1"
        if [ -e "$p" ]; then
            printf "${p}"
            return
        fi
        shift
    done
}

_vscode=$(vscode_search "/Applications/VSCodium.app/Contents/Resources/app/bin/codium" \
                   "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" \
                   "${HOME}/AppImages/vscodium.appimage")

if [[ -n ${_vscode} ]] && [[ "$OSTYPE" == linux* ]]; then
    func code() {
        "${_vscode}" "$@" >/dev/null 2>&1 &!
    }
else
    eval "alias code=\"${_vscode}\""
fi
