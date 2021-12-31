if [[ -d $HOME/opt/go ]]; then
  export GOROOT="$HOME/opt/go"
  export PATH="$GOROOT/bin:$PATH"
fi
