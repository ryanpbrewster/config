zstyle ':completion:*:*:git:*' script ~/config/zsh/fpath/git-completion.zsh

# fpath is used for zsh tab-completion
fpath=($HOME/config/zsh/fpath $fpath)

autoload -Uz compinit && compinit
