# custom_env.sh
export PS1="\[\033[38;5;10m\]\u\[\033[38;5;15m\]@\[\033[38;5;10m\]\h\[\033[38;5;15m\]:\[\033[38;5;6m\]\w\[\033[38;5;15m\]\$ "
export TERM="xterm-256color"
export COLORTERM="truecolor"
export EDITOR="nano"

prompt() {
  printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"
}
PROMPT_COMMAND=prompt