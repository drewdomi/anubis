#!/usr/bin/env bash

mkdir -p ~/.local/share/atuin
chmod -R u+w ~/.local/share/atuin

# Fix workspace permissions for generated files
sudo chown -R vscode:vscode /workspace/anubis || true

pwd

npm ci &
go mod download &
go install ./utils/cmd/... &

wait
