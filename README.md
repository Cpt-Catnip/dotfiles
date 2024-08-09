# dotfiles

This is where I'll store all the config files for the various tools I use! So far, I have configs for: 

* [Neovim](./.config/nvim)
* [WezTerm](./tilde/.wezterm.lua)

## How to use

First, find the existing config and back it up. Or don't. I'm not your mom.

```bash
mv ~/.config/<CONFIG>{,.bak}
```

Next I like to create a symlink of the files in here into the `.config` directory

```bash
ln -s ~/dotfiles/.config/<CONFIG> ~/.config/<CONFIG>
```

The syntax for making a symlink is `ln -s origin destination`. And that's pretty much it!

To update the dotfile, just pull from the remote repo!

## Future work

I'd love to make a command line script for doing all the above dynamically. Probably something made with [`charm_`](https://charm.sh/) in Go 
that reads all the directories in here and creates the symlinks for you. Also ideally there would be some TUI that allows you to see all the configs in 
here and select which ones you want to copy over. That would be great for being able to decide which configs you want for which machine.

ttfn,

mike

