
# Rebuild script for Nix-on-droid using flake
set -e
echo "[+] Switching configuration with flake..."
nix-on-droid switch --flake .

echo "[✓] Done switching!"
