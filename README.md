
<p align="center"><br><br> <img src="https://github.com/fabburst/dotfiles/blob/master/Fab's%20dotfiles.png"width="160px"> </p>

<h1 align="center"> Dotfiles </h1> 

<!-- -->
## If you're not me  
These are my dotfiles but feel free to study, reuse or grab anything that works for you. 

<!-- -->
# Dotfiles

I keep my configuration in this repo and symlink my [Dotfiles](https://wiki.archlinux.org/index.php/Dotfiles) with stow for reference.
It allows me to keep a versioned directory of all my config files. 

<!-- -->
## Installation
Stow can be installed with this commands :
```
- `sudo pacman -S stow`
```
<!-- -->
## Usage

Stow create symlinks for files in the parent directory of where you execute the command. My dotfiles are all stored in my home directory `~/.dotfiles`. and all stow commands should be executed in that directory. otherwise `-d` flag with location is needed.
**note:** stow can only create a symlink if a config file does not already exist. 
=> if a default file was created upon program installation delete it first before installind a new one with stow. this does not apply to directories, only files.

Navigate to your home directory

`cd ~`

clone the repo:

`git clone https://github.com/fabburst/dotfiles.git`

enter the dotfiles directory

`cd dotfiles`

install the fish settings

`stow fish`

install fish settings for the root user

`sudo stow fish -t /root`
<!-- -->
## Dotfiles for [fish](http://fish.sh) :fish:

Change the shell with this command:

	chsh -s /usr/local/bin/fish

To switch to default shell back, just run `chsh -s /bin/bash`
Fish comes with autocompletion from my shell history, contextual autocompletion a great syntax highlighting and nice funtions.
Functions can easyly be created like this :

```fish
function mkdirp
    mkdir -p $argv
end
```
:pencil2: Mines are :
- bak => Add a ".bak" to a file
- downloads => Go to my downloads folder
- sites => Go to my sites folder
- gc => Git clone
- ip => run myip
- ll => ls -la 
- miaj => sudo pacman -Syu
- mkc => mkdir & cd
- rmv => sudo pacman -R $argv
- speedip => speed-test; myip public
<!-- -->
## Remapping keyboard keys

Script for remapping [Anne Pro 2 keyboard](http://en.obins.net/anne-pro2)keys to french layout
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
The happy few
- [arandr](https://aur.archlinux.org/packages/arandr-git/) : Visual front end for XRandR
- [archur](https://github.com/Foxboron/Archur) : Generate Arch Wallpaper

```
archur -o Arch4k.jpg -t 'solarized' -r 3840x2160 --text 'fabcode'
``````
- [blueman](https://aur.archlinux.org/packages/blueman-git/) : Bluetooth Manager
- [bluez](https://aur.archlinux.org/packages/bluez-git/) : Libraries and tools for the Bluetooth protocol stack.
- [bluez-utils](https://#) : Development and debugging utilities for the bluetooth protocol stac
- [bitwarden-bin](https://aur.archlinux.org/packages/bitwarden-bin/) : Password manager
- [caprine](https://github.com/sindresorhus/caprine) : Facebook Messenger app
- [conky](https://github.com/brndnmtthws/conky) : Light-weight system monitor for X
- [feh](https://github.com/derf/feh) : Image viewer

```
feh --bg-scale ~/Pictures/Arch4k.jpg 
``````
- [fish](https://github.com/fish-shell/fish-shell) : User-friendly command line shell 
- [gdmap](http://gdmap.sourceforge.net/) : Visualize disk space
- [i3-gaps](https://github.com/Airblader/i3) : Fork of i3wm, a tiling window manager for Linux
- [kalu](https://github.com/jjk-jacky/kalu) : "Keeping Arch Linux Up-to-date" app checking for updates
- [mousepad](https://github.com/codebrainz/mousepad) : Simple text editor
- [Konsole](https://github.com/KDE/konsole) : Terminal emulator
- [lightdm-settings](https://github.com/linuxmint/lightdm-settings) : Configuration tool for the LightDM display manager
- [lightdm-slick-greeter](https://github.com/linuxmint/slick-greeter) : Slick-looking LightDM greeter
- [lxappearance](https://www.archlinux.org/packages/community/x86_64/lxappearance-gtk3/) : lxappearance-gtk3 is GTK+ theme switcher of the LXDE Desktop (GTK+ 3 version)
- [mellowplayer](https://github.com/ColinDuquesnoy/MellowPlayer/releases) : Runs web-based music streaming services in its own window
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
- [nemo](https://github.com/linuxmint/nemo) : File manager
- [ttf-font-awesome](https://github.com/FortAwesome/Font-Awesome) : Icon toolkit
- [twmn](https://github.com/sboli/twmn) : Notification system for tiling window managers
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
- [composer](https://github.com/composer/composer) : Dependency Manager for PHP
<!-- -->
## Theming
```
    Install the theme in either /usr/share/themes, or in your home directory, in ~/.local/share/themes and ~/.themes
    go to the desired theme folder: $ cd /usr/share/themes
    clone theme's repo: $ git clone <URI> ****theme_name****
    sudo tar -zcvf Macos-sierra-CT..tar.gz Macos-sierra-CT for icons

```
- [Adwaita-dark-gtk2](https://github.com/axxapy/Adwaita-dark-gtk2) : Dark Theme

- [Macos-sierra-CT](https://github.com/zayronxio/Macos-sierra-CT) : Macos-sierra icons

<!-- -->
## Manual install

- [ ] [Webcatalog](https://github.com/quanglam2807/webcatalog-12) : Description to come
<!-- -->
## Sources of inspiration
- [Github does dotfiles](http://dotfiles.github.io/)
- [Grafikart](https://github.com/grafikart/dotfiles)
- [Benoth](https://github.com/Benoth/dotfiles)
- [jorgebucaran](https://github.com/jorgebucaran/fish-shell-cookbook)
- [laughedelic](https://github.com/laughedelic/fish)
- [MoritzKn](https://github.com/MoritzKn/fish-functions)
