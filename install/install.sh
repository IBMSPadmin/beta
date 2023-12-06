#!/bin/bash

set -u

terminate() {
  printf "%s\n" "$@" >&2
  exit 1
}


# Checking bash...
if [ -z "${BASH_VERSION:-}" ]
then
  terminate "Bash is required to install spadmin"
fi

# Check if script is run in POSIX mode
if [[ -n "${POSIXLY_CORRECT+1}" ]]
then
  abort 'Bash must not run in POSIX mode. Please unset POSIXLY_CORRECT and try again.'
fi

chomp() {
  printf "%s" "${1/"$'\n'"/}"
}

usage() {
  cat <<EOS
SPADMIN Installer
Usage: [NONINTERACTIVE=1] [CI=1] install.sh [options]
    -h, --help       Display this message.
    NONINTERACTIVE   Install without prompting for user input
    CI               Install in CI mode (e.g. do not prompt for user input)
EOS
  exit "${1:-0}"
}

warn() {
  printf "${tty_red}Warning${tty_reset}: %s\n" "$(chomp "$1")" >&2
  #printf "%s\n" "$@" >&2
}

# string formatters
if [[ -t 1 ]]
then
  tty_escape() { printf "\033[%sm" "$1"; }
else
  tty_escape() { :; }
fi
tty_mkbold() { tty_escape "1;$1"; }
tty_underline="$(tty_escape "4;39")"
tty_blue="$(tty_mkbold 34)"
tty_red="$(tty_mkbold 31)"
tty_bold="$(tty_mkbold 39)"
tty_reset="$(tty_escape 0)"

while [[ $# -gt 0 ]]
do
  case "$1" in
    -h | --help) usage ;;
    *)
      warn "Unrecognized option: '$1'"
      usage 1
      ;;
  esac
done


# First check OS.
OS="$(uname)"
if [[ "${OS}" == "Linux" ]]
then
  HOMEBREW_ON_LINUX=1
elif [[ "${OS}" == "Darwin" ]]
then
  HOMEBREW_ON_MACOS=1
else
  abort "Homebrew is only supported on macOS and Linux."
fi

if [[ -n "${HOMEBREW_ON_MACOS-}" ]]
then
  mkdir -p ~/spadmin
  curl https://github.com/IBMSPadmin/beta/releases/download/ubuntu/spadmin_ubuntu-20.04_20231205_091203 -o /tmp/spadmin.bin
  mv /tmp/spadmin.bin ~/spadmin
fi
