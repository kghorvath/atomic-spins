#!/bin/bash

set -ouex pipefail

### Install packages

# Editors
dnf5 -y install emacs neovim vim

# Domain Joining
dnf5 -y install adcli oddjob-mkhomedir realmd samba-common-tools samba-winbind sssd-ad sssd-ipa sssd-ldap libsss_autofs libsss_sudo sssd-nfs-idmap

# Python
dnf5 -y install python3-pip

# Utilities
dnf5 -y install fastfetch htop nmtui rclone screen stow tmux wget

# Cockpit
dnf5 -y install cockpit cockpit-podman cockpit-ostree

# Tailscale
dnf5 config-manager addrepo --overwrite --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo
dnf5 -y install --enablerepo='tailscale-stable' tailscale
