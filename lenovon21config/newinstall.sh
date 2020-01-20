#/!/bash
sudo apt install codeblocks ssh vim gedit nano chromium-browser screenfetch tmux guake clamav clamav-daemon micropolis chkrootkit lynis htop nload iftop iptraf bmon ufw tor telnet netcat openssh-server openssh-client libncurses5-dev libncursesw5-dev xscreensaver xscreensaver-gl-extra xscreensaver-data-extra usbmount xfce4-goodies openvpn



shopt -s cdspell
shopt -s nocaseglob
shopt -s autocd

cp ~/.bashrc ~
cp ~/tmux.conf ~

echo "In Codeblocks, go to Settings, Compiler, Linker, and enter lncurses and /usr/local/lib in Search Directory"

