#!/bin/bash

#
# logging functions

info() {
  printf "  [ \033[00;34m..\033[0m ] %s\n" "$1"
}

success() {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s\n" "$1"
}

added() {
  printf "\r\033[2K  [ \033[00;33mADD\033[0m] %s\n" "$1"
}

fail() {
  local exit_code="${2:-1}"
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] %s\n" "$1"
  exit "$exit_code"
}

#
# file functions

remove_file() {
  rm -rf "$1"
  success "removed $1"
}

link_file() {
  if [ -f "$2" ]; then
    rm -rf "$2"
    ln -s "$1" "$2"
    success "replaced $2 with $1"
  else
    ln -s "$1" "$2"
    success "linked $2 to $1"
  fi
}

install_dotfiles() {
  for source in $(find "$1" -maxdepth 2 -name "*.symlink"); do
    dest="$HOME/.${source##*/}"
    dest="${dest%.symlink}"

    link_file "$source" "$dest"
  done
}

delete_dotfiles() {
  for source in $(find "$1" -maxdepth 2 -name "*.symlink"); do
    dest="$HOME/.${source##*/}"
    dest="${dest%.symlink}"

    remove_file "$dest"
  done
}
