#!/data/data/com.termux/files/usr/bin/bash

# Obsidian Vault Sync - Pull
# Pulls latest changes from GitHub to local vault

VAULT_PATH="/storage/emulated/0/Documents/Obsidian"
cd "$VAULT_PATH" || exit 1

# Pull with rebase to avoid merge commits
git pull --rebase origin main

# Log result
echo "$(date): Pull completed" >> /storage/emulated/0/obsidian-sync.log
