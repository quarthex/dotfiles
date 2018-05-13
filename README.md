# My own .files

Colors comes from [grubox](https://github.com/morhetz/gruvbox).

## Command line applications

*   [Aria2](https://aria2.github.io/):
    Can download files from HTTP(S), FTP, BitTorrent and MetaLink.
*   [etckeeper](https://etckeeper.branchable.com/):
    Store /etc in a VCS repository like git.
    It is a way to backup the system configuration.
*   [feh](https://feh.finalrewind.org/):
    Image viewer. It can set the X background.
*   [fzf](https://github.com/junegunn/fzf):
    Command-line fuzzy finder. Really usefull with the `kill` command.
*   [Glances](https://nicolargo.github.io/glances/):
    Monitoring tool. Replace `top` or `htop`.
*   [MPlayer](http://www.mplayerhq.hu/):
    Music and videos player. Handles a shitload of formats.
*   [pacserve](https://xyne.archlinux.ca/projects/pacserve):
    Share Pacman packages cache between computers of a local network.
    I have a somewhat poor connection.
*   [Redshift](http://jonls.dk/redshift/):
    Adjusts the color temperature of the screen.
    When it comes to sleep time, the screen turns yellowish.
*   [reflector](https://xyne.archlinux.ca/projects/reflector):
    Update the Pacman mirror list.
*   [scrot](http://scrot.sourcearchive.com/): Screenshot utility.
*   [SSHFS](http://github.com/libfuse/sshfs):
    Mount remote directory via SSH.
    Every Linux users have an SSH service.
    Not every Linux users have a NFS service.
*   [udiskie](https://pypi.python.org/pypi/udiskie):
    Removable disk automounter.
*   [Vim](https://www.vim.org/): I am not a great fan of `nano`.
    *   [ctrlp.vim](http://ctrlpvim.github.io/ctrlp.vim/): Fuzzy file finder.
    *   [NERDTree](https://github.com/scrooloose/nerdtree):
        Tree explorer plugin for navigating the filesystem.
    *   [Syntastic](https://github.com/vim-syntastic/syntastic): Syntax checker.
*   [w3m](https://salsa.debian.org/debian/w3m):
    Web browser.
    I never use it but keep it as a fallback solution whenever my X
    configuration get messy.
*   [yay](https://github.com/Jguer/yay): AUR helper.
    There is many AUR helpers out there.
    Most of them are more secure than `yaourt`.
*   [youtube-dl](http://rg3.github.io/youtube-dl/):
    Extract videos from web pages.
    Give it a Youtube URL, it will find, download and convert the video for you.
    It handles many websites, even porn...
*   [Zsh](http://www.zsh.org/): Bash alternative.
    *   [zsh-completions](https://github.com/zsh-users/zsh-completions):
        Additional completion definitions.
    *   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting):
        Fish shell-like syntax highlighting.

## Graphical applications

*   [Atom](https://atom.io/): Agnostic text editor.
    It is a bit memory-consuming.
*   [Audacity](https://www.audacityteam.org): Audio editor.
*   [Compton](https://github.com/chjj/compton): Compositor for X.
*   [DiffPDF](https://gitlab.com/eang/diffpdf): Compares PDF files side-by-side.
*   [Dolphin Emulator](http://www.dolphin-emu.org/): GameCube & Wii emulator.
*   [dunst](https://dunst-project.org/):
    Notification daemon. See [dunstrc](.config/dunst/dunstrc).
*   [Evince](https://wiki.gnome.org/Apps/Evince): PDF viewer.
*   [Firefox](https://www.mozilla.org/firefox/): Web browser.
*   [GD Map](http://gdmap.sourceforge.net): Disk space visualizer.
    Works like KDirStat (for KDE) or WinDirStat (for Windows).
*   [GIMP](http://www.gimp.org/): Raster graphics editor.
*   [GnuCash](https://gnucash.org/): Accounting application.
*   [Gource](http://gource.io/): VCS history visualization toy.
*   [i3-gaps](https://github.com/Airblader/i3):
    Fork of i3 tiling window manager. See [config](.config/i3/config).
    *   [i3blocks](http://vivien.github.io/i3blocks/):
        Generate status line for i3bar.
        See [i3blocks.conf](.config/i3/i3blocks.conf).
        *   [sysstat](http://pagesperso-orange.fr/sebastien.godard/): used by i3blocks
    *   [i3lock](https://i3wm.org/i3lock/): Screen locker
        See [i3lock-wrapper](.local/bin/i3lock-wrapper).
*   [Inkscape](https://inkscape.org/): Vector graphics editor.
*   [Kdenlive](https://www.kdenlive.org/): Video editor.
*   [Klavaro](http://klavaro.sourceforge.net/):
    Touch typing tutor program. I've learned bépo with that.
*   [Kodi](http://kodi.tv): Multimedia center.
*   [LibreOffice](http://www.libreoffice.org/): Office suite.
*   [Meld](http://meldmerge.org/): Graphical diff tool.
    You can use `vimdiff` too.
*   [Nmap](http://nmap.org/): Network security auditing.
*   numlockx: Toggle numlock key.
*   [Fira](http://mozilla.github.io/Fira/): Mozilla's typeface.
*   [Font Awesome](http://fontawesome.com):
    Iconic font used by the status bar and the VCS status in zsh.
*   [Pidgin](http://pidgin.im/): Multi-protocol instant messaging client.
    It can handle your Facebook account with the right plugin.
*   [PlayOnLinux](http://www.playonlinux.com/): Run Windows programs.
    Don't expect a lot. Recent games won't work.
*   [The Powder Toy](http://powdertoy.co.uk/): Physics sandbox game.
*   [Rofi](https://github.com/DaveDavenport/rofi/):
    Window switcher & application launcher. See [config](.config/rofi/config).
*   [Simple Scan](https://gitlab.gnome.org/GNOME/simple-scan): Scanning utility.
*   [Steam](https://store.steampowered.com/): Gaming platform.
    DotA killed Tremulous. :'(
*   [Termite](https://github.com/thestinger/termite/): Virtual terminal.
    URxvt doesn't handle the Font Awesome typeface.
    See [config](.config/termite/config).
*   [VirtualBox](http://virtualbox.org): Virtualization.
*   [Wireshark](https://www.wireshark.org/): Network protocol analyzer.
*   [Xournal](http://xournal.sourceforge.net/): Notetaking application.
    Actually, I use this to fill PDF forms that doesn't support editing.
