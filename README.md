Contains everything needed to automatically configure a machine to how I like it.
Install all my favourite packages/tools/software and copy my settings

# RUN
Use the `run` bash script to install everything.
It takes a filter argument, if you only want to install something specific
It also takes the `--dry` argument, so you can see what it would do without actually doing it.
It runs all of the scripts in the `/runs` directory

# Dotfiles & GNU Stow
The `/dotfiles` director contains all of my dotfiles. It uses GNU Stow to create symbolic links to them all.
Each set of dotfiles is stored in a "package" (a directory) for that tool. Run `stow <package>` to install the dotfiles for that tool.

# Homebrew
My chosen package manager is homebrew. The scripts in this directory rely heavily on it to install new packages.
This includes desktop applications, not just cli tools.
There is a Brewfile in `/runs` which contains all of the tools I want to install most often.

# Tool Notes
- Karabiner Elements is MacOS ONLY! So don't stow when on Linux/Windows
