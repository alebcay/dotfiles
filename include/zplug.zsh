export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# https://github.com/zplug/zplug/issues/368#issuecomment-282566102
touch $ZPLUG_LOADFILE

zplug "zplug/zplug"
zplug "Tarrasch/zsh-bd"
zplug "oz/safe-paste"
zplug "plugins/brew", from:oh-my-zsh
zplug "mafredri/zsh-async"
zplug "unixorn/warhol.plugin.zsh"
zplug "srijanshetty/zsh-pip-completion"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "hlissner/zsh-autopair", defer:1
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "ael-code/zsh-colored-man-pages"
zplug "hkupty/ssh-agent"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
