export EDITOR="nano"
export LANG=en_US.UTF-8

# Clean and organize the PATH variable
export PATH="/Users/caleb/.env/bin:/Users/caleb/go/bin:/Users/caleb/.cargo/bin:/Users/caleb/.local/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:/usr/local/sbin:/usr/local/bin:/opt/local/bin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/MacGPG2/bin:/usr/texbin:/Volumes/Storage/Caches/go/bin:/Volumes/Storage/Developer/depot_tools"

export KEYDIR="/Volumes/Storage/Developer/keystore"

# Source files dynamically from the include directory
for file in ~/.env/include/*.zsh; do
    source "$file"
done

# Source secure files dynamically from the secure directory
if [ -d "$HOME/.env/secure" ]; then
    for file in ~/.env/secure/*.zsh; do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
fi

source ~/.env/include/compinit.zsh

eval "$(starship init zsh)"
