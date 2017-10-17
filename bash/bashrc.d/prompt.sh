COLOR=$(python <<EOH
import hashlib
import socket
colors = [
  31, # red
  32, # green
  33, # yellow
  34, # blue
  35, # magenta
  36, # cyan
  37,
  39,
  90,
  91,
  92,
  93,
  94,
  95,
  96,
  97,
]
n = int(hashlib.sha256(socket.gethostname()).hexdigest(), 16)
print(colors[n % len(colors)])
EOH
)

PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
PS1='\[\e[1;32m\]\u\[\e[m\]@\[\e[1;${COLOR}m\]\h\[\e[m\]:\[\e[1;34m\]${PS1X}\[\e[m\]\\$ '
