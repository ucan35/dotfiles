# Dotfiles

My configuration files.

## Getting Started

This repository is a bare git repository. The technique used can be found [here](https://www.atlassian.com/git/tutorials/dotfiles).

### Prerequisites

Git.

### Installing

Clone repository.
```
git clone --bare https://github.com/ucan35/dotfiles.git $HOME/.dotfiles 
```

Checkout files.
```
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

Initialize and update submodules.
```
git --git-dir=$HOME/.dotfiles --work-tree=$HOME submodule init
git --git-dir=$HOME/.dotfiles --work-tree=$HOME submodule update
```

Optionally delete `README.md` file.

That's it.

## TODOS

Currently, the configuration files that are outside of home directory are tracked with copies of them under `.dotfiles/root` directory.
They can be managed with symbolic links but that is too error prone. 

I plan to change this in future. A solution could be mounting `.dotfiles/root` directory as an overlayfs.

## Acknowledgments

Thanks to all plugin authors and contributors. Everything here are solely inspirations from others.
