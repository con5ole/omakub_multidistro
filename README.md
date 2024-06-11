# Omakub_multidistro
The aim of this fork is to ~~add support for multiple distros to Omakub with as little effort and as few changes as possible~~ have as much as possible of Omkaub work on Debian stable, with the hope that support for Debian Stable makes support for more modern distros easier to achieve.

Currently it supports debian 12 fresh install and matches omakub from the date of the fork, 2024-06-09, with a few missing pieces as noted below.

Further development is paused for the time being until Omakub reaches it's intended state for Ubuntu.

There are some notable missing parts:

- Typora is disabled on purpose for now
- Alacritty is an older version than the one in ubuntu and  ~~doesn't seem to launch zellij by default (zellij can be launched manually from alacritty however)~~ uses the older config file format.
- neovim also uses an older version ~~that complains about some configs~~ and doesn't use the Omakub configs.


To test the work in progress - again, at your own risk and only on a fresh install of debian 12 - you can run the following command:

wget -qO- https://raw.githubusercontent.com/con5ole/omakub_multidistro/release/install_md.sh | bash

The original readme from omakub follows.

# Omakub

Turn a fresh Ubuntu installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub is an opinionated take on what Linux can be at its best.

Watch the introduction video and read more at [omakub.org](https://omakub.org).

## Contributing to the documentation

Please help us improve Omakub's documentation on the [the basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).
