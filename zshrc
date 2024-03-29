setopt correct

export EDITOR="nano"
export LANG=en_US.UTF-8
export PATH="${HOME}/.env/bin:${HOME}/go/bin:${HOME}/.cargo/bin:${HOME}/.local/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:/opt/local/bin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/MacGPG2/bin:/usr/texbin:/Volumes/Storage/Caches/go/bin:/Volumes/Storage/Developer/depot_tools"
export KEYDIR="/Volumes/Storage/Developer/keystore"

source ~/.env/include/zinit.zsh
source ~/.env/include/aliases.zsh
source ~/.env/include/android.zsh
source ~/.env/include/brew.zsh
source ~/.env/include/ccache.zsh
source ~/.env/include/fzf.zsh
source ~/.env/include/gcloud.zsh
source ~/.env/include/history.zsh
source ~/.env/include/iterm2.zsh
source ~/.env/include/keys.zsh
source ~/.env/include/nvm.zsh
source ~/.env/include/starship.zsh
source ~/.env/include/style.zsh

if [ -d "$HOME/.env/secure" ]; then
    if [ -f "$HOME/.env/secure/brew.zsh" ]; then
        source ~/.env/secure/brew.zsh
    fi

    if [ -f "$HOME/.env/secure/work.zsh" ]; then
        source ~/.env/secure/work.zsh
    fi
fi

source ~/.env/include/compinit.zsh

eval "$(starship init zsh)"
