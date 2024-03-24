# `dotfiles`

These dotfiles have been built from the ground up with modern standards and 3 goals: Speed, simplicity, and elegance.

The goal of this repository is to provide inspiration for your own dotfiles, and not necessary just a copy-paste solution. As such, I've tried to document the **reason** I install everything, instead of simply what I installed. This should give you a basis to cherry-pick the features you want, and leave the rest that you don't need.

## What's Included?

A quick list of all the configurations that are in this repo, and why I chose the tools I did:

### Karabiner Elements

A powerful keyboard remapping tool that allows me to remap keys on my keyboard to make it more comfortable to use.

What's Remapped:
- The Caps Lock key has been rebound to the `Hyper` key, which is essentially all the modifiers combined, serving as an additional modifier key.
- The `Hyper` key, when used with `P`, `N`, `W`, and `A` have been remapped to Control, to suit use with `nvim` and `tmux` 

### Kitty Terminal

Why Kitty?
- It's the fastest [terminal emulator out there](https://thume.ca/2020/05/20/making-a-latency-tester/), hardware-tested with a keyboard-to-photon latency sensor
- It's has a ton of [modern terminal features like ligatures, emojis, graphics, and more](https://sw.kovidgoyal.net/kitty/)
- It's [completely customizable](https://sw.kovidgoyal.net/kitty/overview/#configuring-kitty)

### ZSH Shell

I mainly chose ZSH because it's more customizable than Bash, and it's also the [default shell for macOS now](https://support.apple.com/lt-lt/guide/terminal/trml113/mac).

I have decided to opt-out of a package manager, mainly because of my small amount of plugins, and the speed bonus that comes with not having a package manager.

This config loads in *under a quarter of a second* on my M1 MacBook Air.

Here's what I have installed:
- **Powerlevel10k Prompt**: Enables transient prompt, to reduce clutter
- **Pure Theme**: A super clean theme that displays only the necessary info
- **ZSH Syntax Highlight**: Shows syntax errors before I run the command
- **Zoxide**: Making directory navigation faster and easier

### Neovim

This Neovim configuration is completely custom-built, on the `Lazy` plugin manager.

There's a ton of things in there, so check out the `.config/nvim/README.md` for more info.

## Installation 

> More comprehensive installation instructions coming soon!

To install these dotfiles, simply clone the repo, and run `stow .`.

As I have explained in the start, I still strongly recommend cherry-picking features that you like! It's always more beneficial to build the config yourself, rather than copying it completely from someone else. 
