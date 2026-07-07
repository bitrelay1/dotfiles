# Dotfiles

Dotfiles management using [chezmoi](https://www.chezmoi.io/) for bootstrapping and maintaining MacBook + Linux configs.

## Quick Start

On a fresh machine:

```bash
git clone https://github.com/bitrelay1/dotfiles ~/projects/dotfiles
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

Organized by modifier namespace for ergonomic consistency.

### AeroSpace (Window Manager)
**Modifier:** `Alt` (right hand) + `Ctrl` (workspace navigation)

#### Window Focus & Movement
| Key | Action |
|-----|--------|
| `Alt+h/j/k/l` | Focus window left/down/up/right |
| `Alt+Shift+h/j/k/l` | Move window left/down/up/right |
| `Alt+q/e` | Focus monitor left/right |

#### Workspace Navigation
| Key | Action |
|-----|--------|
| `Ctrl+1-9/0` | Jump to workspace 1-9/Z |
| `Ctrl+h/l` | Previous/next workspace |

#### Layout & Display
| Key | Action |
|-----|--------|
| `Alt+/` | Cycle layouts (tiling → horizontal → vertical) |
| `Alt+,` | Toggle accordion layout |
| `Alt+Space` | Fullscreen |
| `Alt+Tab` | Workspace back-and-forth |

#### Service Mode (Complex Operations)
| Key | Action |
|-----|--------|
| `Alt+Shift+;` | Enter service mode |
| `Alt+Shift+h/j/k/l` (in service) | Join/stack with left/down/up/right |
| `r` (in service) | Reset/flatten layout |
| `f` (in service) | Toggle floating ↔ tiling |

#### Application Launch
| Key | Action |
|-----|--------|
| `Cmd+Enter` | Launch Ghostty terminal |

---

### Zellij (Terminal Multiplexer)
**Modifier:** `Ctrl+Alt` (consistent single namespace for all operations)

#### Pane Navigation & Focus
| Key | Action |
|-----|--------|
| `Ctrl+Alt+h/j/k/l` | Move pane focus left/down/up/right |

#### Mode Entry (Exit: `Enter` or `Esc`)
| Key | Action |
|-----|--------|
| `Ctrl+Alt+p` | Pane mode (create, move, rename panes) |
| `Ctrl+Alt+t` | Tab mode (manage tabs) |
| `Ctrl+Alt+n` | Resize mode (adjust pane sizes) |
| `Ctrl+Alt+m` | Move mode (move panes around) |
| `Ctrl+Alt+s` | Scroll mode (scroll & search scrollback) |

#### Special Modes
| Key | Action |
|-----|--------|
| `Ctrl+Alt+b` | Tmux mode |
| `Ctrl+Alt+z` | Session mode |

#### Tab Operations
| Key | Action |
|-----|--------|
| `Ctrl+Alt+i/o` | Cycle to previous/next tab (quick navigation) |
| `Ctrl+Alt+u/y` | Move tab left/right (rearrange) |

#### Layout Operations
| Key | Action |
|-----|--------|
| `Ctrl+Alt+[/]` | Previous/next swap layout |
| `Ctrl+Alt+f` | Toggle floating panes |

#### Pane Operations
| Key | Action |
|-----|--------|
| `Ctrl+Alt+d` | New pane |
| `Ctrl+Alt+w` | Toggle pane pin |

#### Quit
| Key | Action |
|-----|--------|
| `Ctrl+Alt+q` | Quit Zellij |

---

### Ghostty (Terminal Emulator)
**Modifier:** `Cmd` (system-level, global)

| Key | Action |
|-----|--------|
| `Cmd+grave_accent` | Toggle quick terminal (dropdown) |

---

### Helix (Editor)
**Layouts** (`helix -c <layout-name>`):
- `infra` — Infrastructure/container work (minimal editor, space for tools)
- `dev` — Development (editor + file explorer + test terminal)
- `ai-chat` — AI collaboration (editor context + agent panes)
- `debug` — Logging/monitoring (minimal editor, large log area)

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
