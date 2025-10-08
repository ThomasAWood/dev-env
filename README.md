Automatically install all my favourite packages/tools/software using homebrew and configure them all how I like it with GNU Stow
Run `setup.sh` to get started.

# Homebrew
This repo contains a `Brewfile` which has all the packages and apps that I want to install on a new machine.
This includes app store applications.

# GNU Stow
I'm using GNU Stow to store dotfiles.

## How to use
Separate packages for each tool's config. E.g. tmux package, nvim package, alacritty package, etc.

Run `stow {package_name}` to update each package.
E.g. to stow tmux config run `stow tmux`

File Structure:
Each new folder in this repo is a package.
To create a new package, create a new folder with that packages name.

# Individual Tool Notes
- Karabiner Elements is MacOS ONLY! So don't stow when on Linux/Windows
- Raycast
  - Is installed by Brewfile, but settings aren't stored in dotfile format.
  - Raycast has an export/import settings feature, use that.

# Branching Strategy
Creating a separate branch for different configs. E.g. a new branch for a work laptop or a windows laptop etc.