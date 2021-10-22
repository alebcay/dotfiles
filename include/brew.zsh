export HOMEBREW_EDITOR="/Applications/VSCodium.app/Contents/Resources/app/bin/codium"
export HOMEBREW_BOOTSNAP=1

function remotesum {
  curl -L -s --progress-bar "$1" | sha256sum | awk '{print $1}'
}
