# Extra software for Debian Bookworm repository

[![Fastfetch DEB build](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-fastfetch.yml/badge.svg)](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-fastfetch.yml)
[![Neovim DEB Build](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-neovim.yml/badge.svg)](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-neovim.yml)
[![Iosevka DEB Build](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-iosevka.yml/badge.svg)](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-iosevka.yml)
[![Minichlink DEB Build](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-minichlink.yml/badge.svg)](https://github.com/foil-hat-guy/OPi5Plus-Soft/actions/workflows/update-minichlink.yml)

## Description:

This repository contains some software packages for Debian Bookworm repository.
Some packages are too old in the Debian repository, some do not avaliable for arm64 
architecture and you have to build them from source. Or you can download them and 
install from this repository.


## Installation:

1. Download a gpg key for the repository:
```
wget -qO - https://foil-hat-guy.github.io/Debian-Extra/PUBLIC.KEY | sudo tee /etc/apt/trusted.gpg.d/Debian-Extra.asc >> /dev/null
```

2. Add the repository to the repository list:
```
printf "\ndeb https://foil-hat-guy.github.io/Debian-Extra/ bookworm contrib \n" | sudo tee --append /etc/apt/sources.list >> /dev/null
```

## Usage:

To install packages use your standard Debian package manager: apt or synaptic.
