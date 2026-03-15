#!/data/data/com.termux/files/usr/bin/bash

# Obsidian Vault Sync - Push
# Pushes local changes to GitHub

VAULT_PATH="/storage/emulated/0/Documents/Obsidian"
cd "$VAULT_PATH" || exit 1

# Add all changes
git add .

# Commit with timestamp if there are changes
if ! git diff-index --quiet HEAD --; then
    git commit -m "Sync: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "$(date): Push completed" >> /storage/emulated/0/obsidian-sync.log
else
    echo "$(date): No changes to push" >> /storage/emulated/0/obsidian-sync.log
fi
