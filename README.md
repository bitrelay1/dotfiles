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
  - `aerospace/` - AeroSpace window manager config
  - `ghostty/` - Ghostty terminal config
  - `zellij/` - Zellij terminal multiplexer config
  - `helix/` - Helix editor config
- `.chezmoi.toml` - Chezmoi configuration

## Tools Included

### Core
- **aerospace** - Tiling window manager
- **ghostty** - Native terminal emulator
- **zellij** - Terminal multiplexer
- **helix** - Modal editor
- **starship** - Shell prompt
- **oh-my-zsh** - Shell framework

### Development
- Python 3.12, Git
- Docker, Colima, Podman, Distrobox
- GitHub CLI (`gh`)
- Lazygit (Git UI)

### CLI Utilities
- fzf (fuzzy finder), ripgrep, fd
- bat (cat clone), jq, yq
- direnv (environment management)

### Cyber & Detection Engineering
- nmap, socat, mitmproxy

## Keybindings

### AeroSpace (Window Manager)
| Key | Action |
|-----|--------|
| `Alt+h/j/k/l` | Focus window left/down/up/right |
| `Alt+Shift+h/j/k/l` | Move window left/down/up/right |
| `Ctrl+1-9/0` | Jump to workspace 1-9/Z |
| `Ctrl+h/l` | Previous/next workspace |
| `Alt+/` | Toggle tiling layout |
| `Alt+,` | Toggle accordion layout |
| `Alt+Space` | Fullscreen |
| `Cmd+Enter` | Launch Ghostty |

### Zellij (Terminal Multiplexer)
| Key | Action |
|-----|--------|
| `Ctrl+Alt+h/j/k/l` | Move pane focus left/down/up/right |
| `Ctrl+Alt+p` | Enter pane mode (exit with same key) |
| `Ctrl+Alt+t` | Enter tab mode (exit with same key) |
| `Ctrl+Alt+n` | Enter resize mode (exit with same key) |
| `Ctrl+Alt+m` | Enter move mode (exit with same key) |
| `Ctrl+Alt+s` | Enter scroll mode (exit with same key) |
| `Alt+i/o` | Move tab left/right |
| `Alt+n` | New pane |

### Ghostty (Terminal)
| Key | Action |
|-----|--------|
| `Cmd+grave_accent` | Toggle quick terminal (dropdown) |

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

## Notes

- **Chezmoi Source:** This repo is the source of truth. Configs are applied from here to `~/.config/` and home directory
- **First Run:** `./install.sh` handles everything; subsequent changes use `chezmoi apply`
- **Conflict-Free Keybindings:** Designed to avoid conflicts across AeroSpace, Zellij, Ghostty, macOS, and browsers
