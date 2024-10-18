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
code .
```

This will install the minimal to get zsh and vscode installed, allowing the below to be edited.

Then edit/run:

```sh
./2-install.sh
./3-config.sh
./4-shell.sh
```

A few manual CLI steps that require interaction:

```sh
gh login
```

Manual installations are listed in `5-manual.md`.

Non-work aps can be installed via

```sh
./personal.sh
```

# Not yet scripted

## Browsers & Testing

 - Chrome addons TBC
  - React devtools https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
  - Redux devtools
 - Android emulator, launch 'android' from sdk tools folder to get Android SDK Manager and 'Manage AVDs'

## Registration
 - Charles Registration in email 'Charles User License' from 'Charles License <licensing@charlesproxy.com>'

## Mac manual install or app config

 - Finder config
   - System Preferences
     - Security and Privacy
       - Allow applications downloaded from anywhere
     - Display arrangement

## Fonts

 - Free
  - [Popular](http://www.fontsquirrel.com/fonts/list/popular)
 - Commercial
  - Helvetica
  - Trade Gothic
  - Bodoni
  - Frutiger
  - Myriad
  - Clarendon
  - Bau
  - Gotham Condensed
