#!/bin/env bash
set -euo pipefail

run_elevated() {
  echo "re"
  if [ $(id -u) -eq 0 ]; then
    $1
  else
    echo -n "Enter your root "# Password
    su -c $1
  fi
}

if apt -v > /dev/null 2> /dev/null; then
  # Apt installed
  sleep 0
else
  echo "This script can only run on Debian-based operating systems"
  exit 1
fi

if sudo -V > /dev/null 2> /dev/null; then
  # Sudo installed
  sleep 0
else
  echo "Installing sudo"
  run_elevated "apt-get update" > /dev/null 
  run_elevated "apt-get install --yes sudo" > /dev/null
fi

if git -v > /dev/null 2> /dev/null; then
  # Git installed
  sleep 0
else
  echo "Installing git"
  run_elevated "apt-get update" > /dev/null 
  run_elevated "apt-get install --yes git" > /dev/null
fi

git clone https://github.com/highghlow/umbrel-install-script /tmp/uis
cd /tmp/uis
bash install.sh
