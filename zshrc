setopt correct

export EDITOR="nano"
export LANG=en_US.UTF-8
export KEYDIR="/Volumes/Storage/Developer/keystore"

### Setup PATH
dirs=(
    ~/.env/bin                            # My scripts (in this repo)
    ~/go/bin                              # Go
    ~/.cargo/bin                          # Rust
    ~/.local/bin                          # Local scripts
    ${KREW_ROOT:-$HOME/.krew}/bin         # Krew
    ${PYENV_ROOT:-$HOME/.pyenv}/bin       # pyenv
    /usr/local/bin /usr/local/sbin        # local takes precedence
    /bin /sbin /usr/bin /usr/sbin         # Standard Unix
)
typeset -U path=()                        # No duplicates
# Use full path so /bin and /usr/bin aren't duplicated if it's a symlink.
for d in $dirs:A; [[ -d $d ]] && path+=($d)
unset dirs d

source ~/.env/include/zinit.zsh
source ~/.env/include/aliases.zsh
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
