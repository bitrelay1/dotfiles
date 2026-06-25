# Dotfiles

Dotfiles management using [chezmoi](https://www.chezmoi.io/) for bootstrapping and maintaining MacBook + Linux configs.

## Quick Start

On a fresh machine:

```bash
git clone https://github.com/<your-user>/dotfiles ~/projects/dotfiles
cd ~/projects/dotfiles
./install.sh
```

This will:
1. Install Homebrew
2. Install chezmoi
3. Apply dotfiles configs
4. Install all packages from Brewfile

## Structure

- `Brewfile` - Package management (Homebrew)
- `dot_*` - Files that will be symlinked to `$HOME/` (e.g., `dot_zshrc` → `~/.zshrc`)
- `dot_config/` - Config files for `~/.config/`
  - `helix/` - Helix editor config
  - `ghostty/` - Ghostty terminal config
  - `hyprspace/` - Hyprspace window manager config
- `scripts/` - Custom scripts and setup routines
- `.chezmoi.toml` - Chezmoi configuration

## Tools Included

### Core
- **helix** - Editor
- **ghostty** - Terminal
- **hyprspace** - Window manager
- **aider-ai** - AI-assisted coding

### Development
- Python 3.12, Docker, Podman, Distrobox
- GitHub CLI (`gh`)
- Git utilities

### CLI Utilities
- fzf, ripgrep, fd, bat, jq, yq
- httpie (curl alternative)
- direnv (environment management)

### Cyber & Detection Engineering
- nmap, socat, mitmproxy

## Usage

After bootstrap, dotfiles can be managed with:

```bash
# View changes
chezmoi diff

# Apply changes
chezmoi apply

# Edit a dotfile
chezmoi edit ~/.zshrc
```

## Cross-Platform

This repo supports both macOS (via Homebrew) and Linux (via package managers).

Platform detection is handled via chezmoi templates using `{{ .ostype }}`.

## Next Steps

- [ ] Customize shell config in `dot_zshrc`
- [ ] Add Helix config in `dot_config/helix/`
- [ ] Add Ghostty config in `dot_config/ghostty/`
- [ ] Add Hyprspace config in `dot_config/hyprspace/`
- [ ] Create container definitions (separate repo or `scripts/containers/`)
