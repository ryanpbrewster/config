if [[ -e $HOME/.firebase-dev ]]; then
  . $HOME/.firebase-dev/profile.sh
fi

if [[ -e /opt/node/bin ]]; then
  export PATH=/opt/node/bin:$PATH
fi
