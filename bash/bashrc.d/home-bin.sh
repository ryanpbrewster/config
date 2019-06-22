if [[ -d $HOME/config/bin ]]; then
  export PATH=$HOME/config/bin:$PATH
fi

if [[ -d $HOME/bin ]]; then
  export PATH=$HOME/bin:$PATH
fi

if [[ -d $HOME/.bin ]]; then
  export PATH=$HOME/.bin:$PATH
fi
