# Omakub_multidistro
The aim of this fork is to add support for multiple distros to Omakub with as little effort and as few changes as possible.

This is a work in progress which might ruin your installation when run. Use at your own risk.

Current status: Debian support in progress and provides most of the creature comforts of the Ubuntu version when run from a base bookworm install.

There are some notable missing parts:

- Ruby fails to install
- Typora is disabled on purpose for now
- Alacritty is an older version than the one in ubuntu and doesn't seem to launch zellij by default (can be launched manually)
- neovim also uses an older version that complains about some configs



To test the work in progress - again, at your own risk - you can run the following command:

wget -qO- https://raw.githubusercontent.com/con5ole/omakub_multidistro/develop/install_md_develop.sh | bash


# Omakub

Turn a fresh Ubuntu installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub is an opinionated take on what Linux can be at its best.

Watch the introduction video and read more at [omakub.org](https://omakub.org).

## Contributing to the documentation

Please help us improve Omakub's documentation on the [the basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).
