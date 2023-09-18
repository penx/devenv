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
git clone https://github.com/penx/devenv.git
cd devenv
./zsh.sh
./install.sh
./sshkey.sh
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
