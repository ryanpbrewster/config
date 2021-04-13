if [[ -d $HOME/.bin ]]; then
  export PATH=$PATH:$HOME/.bin;
fi

if [[ -d $HOME/config/bin ]]; then
  export PATH=$PATH:$HOME/config/bin;
fi
