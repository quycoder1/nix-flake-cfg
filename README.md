# My Nix-on-droid configuration
just a normal Nix-on-droid configuration! if you want to, just clone it!  
this is a simplest nix package manager config.

## things that you need to prepare before using my config
- a clean Nix-on-droid environment (of course, if not then why are you here?)
  - install it from F-Droid: https://f-droid.org/packages/com.termux.nix/
  - install it normally
  - when asked for bootstrap, just click "OK"
  - this will take a while, when asked "do you want to set it up with flake?" press `y` and hit Enter
  - again, waiting is happiness :))

## how to use my config
1. First, make sure you have **git** installed:
   ```bash
   nix profile install nixpkgs#git nixpkgs#curl
  
2. use this script
  ```bash
bash <(curl -sL https://raw.githubusercontent.com/quycoder1/nix-flake-cfg/main/setup.sh)
```
3. rebuild your Nix-on-droid using the script named "rebuild.sh" inside the repo directory
4. customize? go ahead!
