#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable erikreider/SwayNotificationCenter
dnf5 -y copr enable heus-sueh/packages 

# Install main Hyprland packages
dnf5 -y install \
	hyprland \
	hyprcursor \
	hyprpaper \
	hyprpicker \
	hypridle \
	hyprlock \
	hyprshot \
	hyprsunset \
	hyprutils \
	xdg-desktop-portal-hyprland

# Install additional packages
dnf5 -y install \
	bluez \
	bluez-tools \
	brightnessctl \
	gdm \
	grim \
	hyprpanel \
	network-manager-applet \
	pavucontrol \
	sddm \
	slurp \
	swaync \
	swww \
	thunar \
	waybar \
	wofi

# Disable copr repos
dnf5 -y copr disable solopasha/hyprland
dnf5 -y copr disable erikreider/SwayNotificationCenter
dnf5 -y copr disable heus-sueh/packages
