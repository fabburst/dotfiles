
<p align="center"><br><br> <img src="https://github.com/fabburst/dotfiles/blob/master/Fab's%20dotfiles.png"width="160px"> </p>

<h1 align="center"> Dotfiles </h1> 

<!-- -->
## If you're not me  
These are my dotfiles but feel free to study, reuse or grab anything that works for you. 

<!-- -->
# [![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)]Dotfiles

I try to keep my configuration in this repo. I symlink my [dotfiles] with stow for reference to keep new machines up to date
File or directory name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed. thus the name dotfiles. 
I needed a simple tool to manage them : Stow.
Stow allows me to keep a versioned directory of all my config files. they are  that are linked into place via a single command. 

<!-- -->
## Installation
Stow can be installed with this commands :
- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`

```
[GNU Stow] is used to automatically create symlinks from my user's `$HOME/.dotfile` directory that point my various dotfiles.
Usage 
git clone https://github.com/fabburst/dotfiles.git
stow -S 
```
<!-- -->
## Usage

Stow create symlinks for files in the parent directory of where you execute the command. My dotfiles are all stored in my home directory `~/.dotfiles`. and all stow commands should be executed in that directory. otherwise `-d` flag with location is neeeded.
**note:** stow can only create a symlink if a config file does not already exist. if a default file was created upon program installation you must delete it first before you can install a new one with stow. this does not apply to directories, only files.

Navigate to your home directory

`cd ~`

clone the repo:

`git clone http://git.xero.nu/dotfiles.git`

enter the dotfiles directory

`cd dotfiles`

install the fish settings

`stow fish`

install fish settings for the root user

`sudo stow fish -t /root`
<!-- -->
## Myshell

I changed my shell with the this command:

	chsh -s /usr/local/bin/fish

To switch to default shell back, just run `chsh -s /bin/bash`
I switched to fish because it comes with autocompletion from my shell history, contextual autocompletion a great syntax highlighting and nice funtions.
Functons can easyly created like this :

```fish
function mkdirp
    mkdir -p $argv
end
```
Mine are :
- bak
Add a ".bak" to a file
- downloads
Got to my downloads folder
- sites
Got to my sites folder
- gc
Git clone
- ip
myip
- ll
ls -la 
- miaj
sudo pacman -Syu
- mkc
mkdir & cd
- rmv
sudo pacman -R $argv
-speedip
speed-test; myip public
<!-- -->
## Remapping keyboard keys

Script for remapping Anne2 keyboard keys to french layout
```
#!/bin/bash
echo "Changing keys..."

xmodmap -e 'keycode 51 = less greater bar brokenbar bar brokenbar'
xmodmap -e 'keycode 35 = dollar sterling bracketright braceright asterisk'

echo "The keys have been changed !"
echo
```
<!-- -->
## Apps to install
tha happy few
- [arandr](https://aur.archlinux.org/packages/arandr-git/) : Visual front end for XRandR
- [blueman](https://aur.archlinux.org/packages/blueman-git/) : Bluetooth Manager
- [bluez](https://aur.archlinux.org/packages/bluez-git/) : Libraries and tools for the Bluetooth protocol stack.
- [bluez-utils](https://#) : Development and debugging utilities for the bluetooth protocol stac
- [bitwarden-bin](https://aur.archlinux.org/packages/bitwarden-bin/) : Password manager
- [caprine](https://github.com/sindresorhus/caprine) : Facebook Messenger app
- [conky](https://github.com/brndnmtthws/conky) : Light-weight system monitor for X
- [feh](https://github.com/derf/feh) : Image viewer
- [fish](https://github.com/fish-shell/fish-shell) : User-friendly command line shell 
- [i3-gaps](https://github.com/Airblader/i3) : Fork of i3wm, a tiling window manager for Linux
- [kalu](https://github.com/jjk-jacky/kalu) : "Keeping Arch Linux Up-to-date" app checking for updates
- [mousepad](https://github.com/codebrainz/mousepad) : Simple text editor
- [Konsole](https://github.com/KDE/konsole) : Terminal emulator
- [lightdm-settings](https://github.com/linuxmint/lightdm-settings) : Configuration tool for the LightDM display manager
- [lightdm-slick-greeter](https://github.com/linuxmint/slick-greeter) : Slick-looking LightDM greeter
- [lxappearance](https://www.archlinux.org/packages/community/x86_64/lxappearance-gtk3/) : lxappearance-gtk3 is GTK+ theme switcher of the LXDE Desktop (GTK+ 3 version)
- [mellowplayer](https://github.com/ColinDuquesnoy/MellowPlayer/releases) : Desktop application that runs web-based music streaming services in its own window and provides integration with your desktop
- [neofetch](https://github.com/dylanaraps/neofetch) : Command-line system information tool
- [openpyn-nordvpn](https://github.com/jotyGill/openpyn-nordvpn) : Easily connect to OpenVPN servers hosted by NordVPN on Linux
- [pcloudcc](https://github.com/pcloudcom/console-client/tree/master/pCloudCC) : Console client for pCloud
- [polybar](https://github.com/jaagr/polybar) : Fast and easy-to-use status bar
- [protonmail-desktop](https://github.com/protonmail-desktop/application) : Unofficial Electron wrapper for ProtonMail
- [pulseaudio-bluetooth](https://www.archlinux.org/packages/extra/x86_64/pulseaudio-bluetooth/) : Bluetooth support for PulseAudio
- [ripgrep](https://github.com/BurntSushi/ripgrep) : Recursively searches directories for a regex pattern
- [rofi](https://github.com/DaveDavenport/rofi) : Application launcher and dmenu replacement
- [speed-test](https://github.com/sindresorhus/speed-test) : Test internet connection speed and ping using speedtest.net from the CLI
- [stow](https://www.gnu.org/software/stow/manual/stow.html) : Managing the installation of multiple software packages in the same run-time directory treeon to come
- [thunar](https://github.com/xfce-mirror/thunar) : File manager
- [ttf-font-awesome](https://github.com/FortAwesome/Font-Awesome) : Icon toolkit
- [ulauncher](https://github.com/Ulauncher/Ulauncher) : Application Launcher
- [unrarall-git](https://github.com/arfoll/unrarall) : Bash script to unrar everything and cleanup in a given directory
- [vlc](https://github.com/videolan/vlc) : Media player
- [volnoti-brightness-git](https://github.com/jukil/volnoti-brightness) : Lightweight brightness notification
- [volumeicon](https://github.com/Maato/volumeicon) : Volume control in systray
- [wallsplash](https://github.com/filalex77/wallsplash/) : Set Unsplash images as wallpapers
- [yacreader](https://github.com/YACReader/yacreader) : Comics reader
<!-- -->
## Dev Apps to install

- [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) : Code editor
- [mariadb](https://github.com/MariaDB) : Open source replacement for MySQL
- [php](https://github.com/php) : Scripting language for web development
- [phpmyadmin](https://github.com/phpmyadmin) : MySQL management tool
- [composer](https://github.com/composer/composer) : Declare, manage, and install dependencies of PHP projects.
<!-- -->
## Theming

- [Adwaita-dark-gtk2](https://github.com/axxapy/Adwaita-dark-gtk2) : Description to come
```
    Install the theme in either /usr/share/themes, or in your home directory, in ~/.local/share/themes and ~/.themes
    go to the desired theme folder: $ cd /usr/share/themes
    clone theme's repo: $ git clone <URI> Adwaita-dark
```
- [Macos-sierra-CT](https://github.com/zayronxio/Macos-sierra-CT2) : Description to come
```
    Install the theme in either /usr/share/themes, or in your home directory, in ~/.local/share/themes and ~/.themes
    go to the desired theme folder: $ cd /usr/share/themes
    clone theme's repo: $ git clone <URI> Macos-sierra-CT
```
<!-- -->
## Manual install

- [ ] [Joplin](https://joplin.cozic.net/) : Description to come
- [ ] [Webcatalog](https://getwebcatalog.com/) : Description to come
<!-- -->
## Sources of inspiration
- [Github does dotfiles](http://dotfiles.github.io/)
- [Grafikart](https://github.com/grafikart/dotfiles)
- [Benoth](https://github.com/Benoth/dotfiles)
