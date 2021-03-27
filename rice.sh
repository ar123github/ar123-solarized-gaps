#i3 gaps solarized rice setup

#Installing programs
emerge --pretend --verbose x11-base/xorg-drivers
emerge --ask x11-base/xorg-server
emerge --ask media-video/mpv
emerge --ask net-misc/youtube-dl
sudo curl -L "https://raw.githubusercontent.com/pystardust/ytfzf/master/ytfzf" -o /usr/bin/ytfzf && sudo chmod +x /usr/bin/ytfzf
emerge --ask net-misc/curl
emerge --ask x11-wm/i3-gaps
emerge --ask x11-misc/polybar
emerge --ask dev-vcs/git
emerge --ask app-misc/nnn
emerge --ask x11-terms/termite
emerge --ask sys-process/bashtop
emerge --ask apps-misc/neofetch
emerge --ask net-im/discord-bin
emerge --ask --noreplace app-eselect/eselect-repository dev-vcs/git
eselect repository enable guru
emerge --ask games-action/minecraft-launcher
emrege --ask media-fonts/fontawesome
emerge --ask media-sound/cmus
emerge --ask app-admin/doas
emerge --ask app-shells/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Configuration
git clone https://github.com/ar123github/ar123-solarized-gaps.git
cd ar123-solarized-gaps
cp wallpapers .wallpapers
cp zshrc .zshrc
cp bashtop ~/.config
cp i3 ~/.config
cp nnn ~/.config
cp neofetch ~/.config
cp polybar ~/.config
cp termite ~/.config
cp cmus ~/.config
cp .wallpapers ~/
cp .zshrc ~/
cp doas.conf /etc
