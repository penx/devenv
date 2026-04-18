# devenv

Scripts to set up development environment

## Script

Set configuration settings - email address is used to create a new RSA key.

```
export MYEMAIL=...
```

Then run the following (don't copy paste, as zsh will launch a new shell):

```sh
xcode-select --install
mkdir ~/Developer
cd ~/Developer
git clone https://github.com/penx/devenv.git
cd devenv
./1-init.sh
```

This will install the minimal to get zsh, Homebrew, and an SSH key set up.

Then edit/run:

```sh
./2-install.sh
code .
./3-config.sh
./4-shell.sh
./5-nvm.sh
./6-commercial-fonts.sh
```

Or include personal (non-work) apps:

```sh
./2-install.sh --personal
```

A few manual CLI steps that require interaction:

```sh
gh auth login
```

Manual installations are listed in `7-manual.md`.

# Notes

## Registration
 - Charles Registration in email 'Charles User License' from 'Charles License <licensing@charlesproxy.com>'

## Fonts (commercial wishlist)
 - Helvetica
 - Trade Gothic
 - Bodoni
 - Frutiger
 - Myriad
 - Clarendon
 - Bau
 - Gotham Condensed
