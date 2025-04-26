
# check môi trường có phải là nix-on-droid không
parent_dir="$(cd "$HOME/.." && pwd)"
if [[ "$parent_dir" != *"com.termux.nix"* ]]; then
    echo "This script ONLY work on nix-on-droid environment!"
    exit 1
fi

# Check git
if ! command -v git &> /dev/null; then
    echo "Git not installed, install it first!"
    exit 1
fi

# Clone repo
echo "cloning quycoder1/nix-flake-cfg..."
git clone https://github.com/quycoder1/nix-flake-cfg.git

# Xóa thư mục mặc định
if [ -d "$HOME/.config/nix-on-droid" ]; then
    echo "Deleting old nix-on-droid's config..."
    rm -rf "$HOME/.config/nix-on-droid"
else
    echo "~/.config/nix-on-droid not found, skipping."
fi
echo "Done! Now you can modify my nix-on-droid config"
cd nix-flake-cfg
chmod +x rebuild.sh
