autoload -Uz compinit
if [ $(date +'%j') != $(date -r ~/.zcompdump +'%j') ]; then
	compinit
else
	compinit -C
fi

zstyle ':completion:*' use-cache true
