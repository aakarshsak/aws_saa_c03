#!/usr/bin/env bash
set -euo pipefail

cd "$HOME"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

rm -rf awscliv2.zip aws

mkdir -p "$HOME/.config"
printf '\n# AWS CLI auto-prompt\nexport AWS_CLI_AUTO_PROMPT="on-partial"\n' >> "$HOME/.bashrc"
