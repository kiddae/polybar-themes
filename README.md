# My polybar themes
This is a repo where i store my polybar themes.

You can just link each files of the theme to the `~/.config/polybar` directory.

I have the folder in my config directory (this way: `~/config/polybar/themes/<theme-name>`), and use this bash script to switch between them:
```shell
#!/bin/bash
ln -f -t ~/.config/polybar ~/.config/polybar/themes/$1/*
~/.config/polybar/launch.sh
```

You can check my [dotfiles](https://github.com/ngynLk/dotfiles) and [scripts](https://github.com/ngynLk/scripts) for further reference. (disclaimer: it's messy)

# Info about my themes
At this time, all my themes use Xresources colors, for pywal integration.

They are mostly made for `i3`, but copy-pasting the `i3` module to `bspwm` shouldn't be too complicated.

## arch-blur
![bar-screenshot](https://i.redd.it/ra6a1d59les41.png "Bar Screenshot")
![full-screenshot](https://i.redd.it/ra6a1d59les41.png "Full Screenshot")
