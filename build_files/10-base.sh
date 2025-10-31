#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# General Packages
dnf5 -y install stow terminus-fonts-console

# Editors
dnf5 -y install emacs neovim

# FreeIPA Client
dnf5 -y install freeipa-client oddjob-mkhomedir
