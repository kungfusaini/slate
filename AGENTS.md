# slate

Phone automation project - Tasker profiles and Termux scripts for treating your phone like a proper computer.

## Philosophy

Everything is version controlled. No random scripts floating around. Every change is tracked, every automation is documented.

## Structure

```
slate/
├── tasker/      # Tasker profiles, tasks and projects
├── termux/      # Termux scripts and configurations
├── configs/     # Configuration files
├── scripts/     # Standalone utility scripts
└── docs/        # Documentation and setup guides
```

## Key Components

### Tasker (`tasker/`)
- Automation profiles triggered by app events, time, location
- Exported as XML files (.prf.xml)
- Import via Tasker app

### Termux (`termux/`)
- Shell scripts for git operations, sync automation
- Require storage permissions
- Often paired with Tasker profiles

## Common Workflows

```bash
# Pull latest changes in Termux
git pull --rebase

# Make changes, commit
git add . && git commit -m "description"

# Push to GitHub
git push
```

## Git

- Remote: github.com/kungfusaini/slate
- User: kungfusaini
