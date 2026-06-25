#!/bin/bash
set -e

echo "🚀 Bootstrapping dotfiles..."

# Install Homebrew if needed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for this session
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install chezmoi if needed
if ! command -v chezmoi &> /dev/null; then
    echo "📦 Installing chezmoi..."
    brew install chezmoi
fi

# Initialize/update dotfiles with chezmoi
echo "📝 Applying dotfiles with chezmoi..."
chezmoi init --apply "$(pwd)"

# Install Brewfile dependencies
echo "📦 Installing packages from Brewfile..."
brew bundle install --file="$(pwd)/Brewfile"

echo "✅ Bootstrap complete!"
echo ""
echo "Next steps:"
echo "  - Configure helix: ~/.config/helix/"
echo "  - Configure ghostty: ~/.config/ghostty/"
echo "  - Set up hyprspace config"
echo "  - Configure your shell (zsh) in ~/.zshrc"
