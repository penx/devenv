devenv
======

Spec and (eventually, maybe) scripts to set up development environment

TEST

##Auto Setup Tools
 - Mac: [Get Mac Apps](http://getmacapps.com/)
  - http://getmacapps.com/install/74fenqmttxql
  - `curl -s http://getmacapps.com/raw/74fenqmttxql | sh`
 - Windows: [Ninite](http://ninite.com/)
 - [Puppet](https://github.com/puppetlabs/puppet)

##Non Dev Tools, Need license

 - [Adobe CS](https://creative.adobe.com/products/download/photoshop)
   - Photoshop
   - Illustrator

##Browsers & Testing

 - [Chrome](https://www.google.com/intl/en/chrome/browser/)
 - [Chrome Canary](https://www.google.co.uk/chrome/browser/canary.html)
 - [Firefox](http://mozilla.org/en-GB/products/download.html)
   - (Tools -> Add-ons)
     - Web developer
     - Firebug
     - Dust me selectors
     - YSlow
     - Total Validator
   - go to about:config, change devtools.inspector.enabled
 - [Android Emulator](http://developer.android.com/sdk/index.html)
   - part of Android Developer Tools, installed with SDK 
   - launch 'android' from tools folder to get Android SDK Manager and 'Manage AVDs'
   - Windows, copy to C:\Program Files\Google
 - [VirtualPC](http://www.microsoft.com/en-gb/download/details.aspx?id=3702) or [VirtualBox](https://www.virtualbox.org/wiki/Downloads ) in Mac OS X 
 - [IE 8-10 virtual machines](http://www.modern.ie/en-us/virtualization-tools)  
 - [Charles web debugger](http://www.charlesproxy.com) 
   - Registration in email 'Charles User License' from 'Charles License <licensing@charlesproxy.com>'

 
In main non dev browser

 - [Adblock](https://adblockplus.org)
 - [Disconnect](https://disconnect.me)

##Dev Tools

 - [Node.js](http://nodejs.org)
   - Grunt, yeoman etc
     - change location of npm global https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
     - `npm install -g grunt grunt-cli yo bower gulp jscs express-generator node-inspector jsxhint nodemon`
 - [Sublime](http://www.sublimetext.com)
   - Register using serial in email ('Sublime Text License Key' from sales@sublimetext.com)
     - Mac: Set up command line access 
       - sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
   - [Package manager](http://wbond.net/sublime_packages/package_control/installation)
   - Go to Preferences -> Browse Packages -> User -> edit 'Package Control.sublime-settings'
   - Preferences -> Package Settings
     - Package Control -> User Settings

        ```
        {
        	"bootstrapped": true,
        	"in_process_packages":
        	[
        	],
        	"installed_packages":
        	[
            "API Blueprint",
            "Babel",
        		"ChangeQuotes",
        		"DocBlockr",
        		"EditorConfig",
        		"Emmet",
        		"Git",
        		"GitGutter",
        		"Handlebars",
        		"HTMLBeautify",
        		"Indent XML",
        		"Javascript Beautify",
        		"jQuery",
        		"LESS",
        		"Markdown Extended",
        		"Package Control",
        		"Razor",
        		"SassBeautify",
        		"SCSS",
        		"sublime-closure-linter",
        		"SublimeLinter",
            "SublimeLinter-contrib-eslint",
        		"SublimeLinter-jscs",
        		"SublimeLinter-jshint"
        	],
        	"repositories":
        	[
        		"https://github.com/fbzhong/sublime-closure-linter"
        	]
        }
        ```

       - JavaScript Beautify -> User Settings
       
        ```
       {
            "format_on_save": true,
            "use_original_indentation": true
       }
        ```
        
     - SideBar
     - Sometimes
       - [yui compressor](http://tech.diaslopes.com/?p=61)
       - [Mustache/underscore template hack](http://stackoverflow.com/questions/9655039/sublime-text-2-recognize-underscore-templates-as-html)
   - Set up tabs
     - Preferences -> Settings ­ User, add property "translate_tabs_to_spaces": true into root object. 
 - Git
   - [Official](http://git-scm.com/download) (already on Mac OS X)
   - [Git For Windows](http://msysgit.github.io/) (official port, newer versions available)
 - Git GUI
   - Windows
     - [TortoiseGit](http://code.google.com/p/tortoisegit/)
     - [GitHub](http://windows.github.com)
     - [SourceTree](http://www.sourcetreeapp.com)
   - Mac
     - [GitHub](http://mac.github.com)
     - [Tower](http://www.git-tower.com/)?
 - SVN Client
   - Windows
     - [TortoiseSVN](http://tortoisesvn.net/)
   - Mac
     - [Cornerstone](http://www.zennaware.com/cornerstone/index.php)
       - register using serial in email ('Cornerstone 2 Purchase' from Zennaware)
 - Ruby 
   - Mac (already installed)
   - [Linux](https://www.ruby-lang.org/en/downloads/)
   - [Windows](http://rubyinstaller.org/)
   - [Ruby Version Manager](http://rvm.io)
   - Sass & Compass
     - sudo gem install sass compass
   - Sass specific/beta
     - sudo gem install sass --version=3.3.0.rc.1
   - Compass specific/beta
     - sudo gem install compass --version=0.13.alpha.4
   - Bourbon?
 - Sublime markdown colouring
   - cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Color\ Scheme\ -\ Default
   - subl Monokai.tmTheme
   - add contents of http://www.bram.us/2013/02/08/sublime-text-markdown-syntax-highlighting/  before </array>
 - [Vagrant](http://www.vagrantup.com/)
   - [Vagrant Manager](http://vagrantmanager.com/)
 - Maven
   - brew install maven
 - React DevTools
   - https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi

##Mac

 - Xcode (Mac AppStore, requires login)
 - Xcode command line tools
 - [LiveReload](http://www.livereload.com/) ([download](http://download.livereload.com/LiveReload-2.3.34.zip))
 - [terminal-notifier](https://github.com/alloy/terminal-notifier)
   - alias gpu=‘git pull && terminal-notifier -message "Git Pull complete"'
 - Markdown
   - Quicklook Markdown - https://github.com/toland/qlmarkdown  https://github.com/toland/qlmarkdown/downloads 
   - [Mou](http://mouapp.com/)
 - Mac Ports or Homebrew
 - [GeekTool](http://projects.tynsoe.org/en/geektool/)
 - Finder config
   - Disable natural scroll
   - Desktop
     - View
     - Sort by
     - Name
   - Finder Preferences
     - New finder window show home folder
   - System Preferences
     - Security and Privacy
       - Require password immediately after wake/screensaver
       - Allow applications downloaded from anywhere
     - Display arrangement
     - Turn Spelling auto correct off
     - Hot corners
     - Keyboard access:
       - Keyboard -> Shortcuts -> Full Keyboard Access -> All controls
   - File Vault?
 - Terminal Config
   - (Terminal -> preferences -> settings -> Pro -> Default)

##Windows

 - [VisualStudio Express 2013 Web](http://www.microsoft.com/en-gb/download/details.aspx?id=40747)
 - [Web Platform Installer](http://www.microsoft.com/web/downloads/platform.aspx)
  - e.g. URLRewrite module
 - Show all file extensions
   - Windows 7
     - Start 
     - Control Panel
     - Appearance and Personalization
     - Folder Options
     - View
     - Uncheck 'Hide extensions for known filetypes'
 - IIS (Start -> Windows Features)
 - SQL Server

##Java

 - [Java SE JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html?ssSourceSiteId=otnjp)
 - [MySQL](http://dev.mysql.com/downloads/mysql/)
 - [MySQL Workbench](http://dev.mysql.com/downloads/tools/workbench/)
   - CREATE USER 'devuser'@'localhost' IDENTIFIED BY 'devpassword';
   - GRANT ALL PRIVILEGES ON *.* TO 'devuser'@'localhost';
 - [Tomcat](http://tomcat.apache.org/download-80.cgi)
   - In Windows, copy to C:\Program Files\Apache\apache-tomcat-x.x.x\
 - [Maven](http://maven.apache.org/download.cgi)
   - In Windows, copy to C:\Program Files\Apache\apache-maven-x.x.x\

##Fonts

 - Free
  - [Bebas](http://fontfabric.com/bebas-neue/)
  - [Popular](http://www.fontsquirrel.com/fonts/list/popular)
  - Oswald
 - Commercial
  - Helvetica
  - Trade Gothic
  - Bodoni
  - Frutiger
  - Myriad
  - Clarendon
  - Bau
  - Gotham Condensed

##Other

 - [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
 - [iTunes](https://www.apple.com/uk/itunes/)
 - [Synergy](http://synergy-foss.org/)
