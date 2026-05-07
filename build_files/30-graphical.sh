#!/bin/bash

set -ouex pipefail

### Install packages

# Terminal Emulators
dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty
dnf5 -y copr disable scottames/ghostty

dnf5 -y install waydroid

# Make sure GNOME Keyring is installed
dnf5 -y install gnome-keyring
