#!/bin/bash
sudo apt install awesome rofi mate-terminal caja eom kcolorchooser acpi brightnessctl \
wireless-tools xorg wget scrot i3lock conky mpd ncmpcpp meson \
libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev \
libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev \
libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev \
libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev \
uthash-dev libev-dev libx11-xcb-dev meson libboost-all-dev nitrogen -y
wget https://github.com/shagu/yada-gtk-theme/releases/download/1.0/yada-gtk.tar.xz -P ~/
mkdir -p ~/.themes
tar -xvf ~/yada-gtk.tar.xz -C ~/.themes 
rm -rf ~/yada-gtk.tar.xz
git clone https://github.com/yshui/picom.git ~/picom
cd ~/picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
git clone https://github.com/cdemoulins/pamixer.git ~/pamixer
cd ~/pamixer
meson setup build
meson compile -C build
sudo meson install -C build
