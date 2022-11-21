## Example Raspberry Pi setup script by Alex Seibs
## This script assumes you have a fresh Raspberry Pi OS Lite install on your Pi 4 or newer
#!/bin/sh
sudo apt update -y && sudo apt full-upgrade -y && sudo dpkg --configure -a && sudo apt autoremove -y
curl -sfL https://get.k3s.io | sh -
k3s kubectl get node
## adding cd in the case that the k3s script has an error and changes directory
cd
sudo apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.github.Eloston.UngoogledChromium
