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
*bar screenshot*
![bar-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/arch-blur/bar-scrot.png "Bar Screenshot")

*full screenshot*
![full-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/arch-blur/scrot.png "Full Screenshot")

To get that blur, you need `compton-tryone`, include `dock` in the blur section of the config and set polybar's opacity to around 85% in the `compton.conf` (see dotfiles).

**Fonts used:**
+ SF Mono
+ Font Awesome 5
+ font-logo

**Modules:**
+ launcher : launches a rofi instance, it is a script you can find in my repo.
+ i3 : i3 workspaces, basically.
+ mpd : mpd controller
+ cpu, memory, date
+ pulseaudio : controls volume, requires pulseaudio (obviously)
+ power : launches a rofi instance that has basic power controls (script to be found in my repo)
