if [ ! -d "$HOME/.env/include/zinit" ]
then
   mkdir -p "$HOME/.env/include/zinit"
   git clone https://github.com/zdharma-continuum/zinit.git $HOME/.env/include/zinit
fi

source ~/.env/include/zinit/zinit.zsh

zinit light "Tarrasch/zsh-bd"
zinit light "oz/safe-paste"
zinit light "mafredri/zsh-async"
zinit light "unixorn/warhol.plugin.zsh"
zinit light "srijanshetty/zsh-pip-completion"
zinit light "zsh-users/zsh-autosuggestions"
zinit light "zsh-users/zsh-history-substring-search"
zinit light "zsh-users/zsh-completions"
zinit light "ael-code/zsh-colored-man-pages"
zinit light "hkupty/ssh-agent"

zinit wait lucid for \
    hlissner/zsh-autopair

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit snippet "OMZP::brew"
