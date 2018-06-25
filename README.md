# devenv

Scripts to set up development environment

## Script

Set configuration settings - the Gist ID and token are for Atom Sync Settings - grab the ID from Atom Sync Settings Gist URL (mine is listed at https://gist.github.com/penx) and the token either from another installation of Atom Sync Settings or by generating a new one at https://github.com/settings/tokens/new with the Gist scope.

```
export GISTID=...
export GISTTOKEN=...
export MYEMAIL=...
```

Then run the following:

```
git clone git@github.com:penx/devenv.git
cd devenv
./install.sh
./atom.sh
./sshkey.sh
```

# Not yet scripted

## Browsers & Testing

 - Chrome addons TBC
  - React devtools https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
  - Redux devtools
 - Android emulator, launch 'android' from sdk tools folder to get Android SDK Manager and 'Manage AVDs'
 - [IE 8-10 virtual machines](http://www.modern.ie/en-us/virtualization-tools)  


## In main non dev browser

 - [Adblock](https://adblockplus.org)
 - [Disconnect](https://disconnect.me)

## Mac manual install or app config

 - Finder config
   - System Preferences
     - Security and Privacy
       - Allow applications downloaded from anywhere
     - Display arrangement
     - Keyboard access:
       - Keyboard -> Shortcuts -> Full Keyboard Access -> All controls
 - Safari config
   - Developer menu
