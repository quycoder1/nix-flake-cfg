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
1. First, make sure you have **git and curl** installed:
  - method 1:
   ```bash
   nix profile install nixpkgs#git nixpkgs#curl
   ```
  - method 2:
    + type `vim .config/nix-on-droid/nix-on-droid.nix`
    + find `environment.packages`
    + type "i" for insert mode
    + add "git" and "curl", enter before typing

(oh, according to my test, method 1 take very very long time! using method 2 maybe faster)
  
2. use this script
  ```bash
bash <(curl -sL https://raw.githubusercontent.com/quycoder1/nix-flake-cfg/main/setup.sh)
```
3. rebuild your Nix-on-droid using the script named "rebuild.sh" inside the repo directory
4. customize? go ahead!
