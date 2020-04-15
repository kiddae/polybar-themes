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
At this time, all my themes use `Xresources` colors, for `pywal` integration.

They are mostly made for `i3`, but copy-pasting the `i3` module to `bspwm` shouldn't be too complicated.

## arch-blur
*bar screenshot*
![bar-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/arch-blur/bar-scrot.png "Bar Screenshot")

*full screenshot*
![full-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/arch-blur/scrot.png "Full Screenshot")

To get that blur, you need `compton-tryone`, include `dock` in the blur section of the config and set polybar's opacity to around 85% in the `compton.conf` (see dotfiles).

**Fonts used:**
+ Iosevka
+ Font Awesome 5
+ font-logo

**Modules:**
+ `launcher` : launches a `rofi` instance, it is a script you can find in my repo.
+ `i3` : i3 workspaces, basically.
+ `mpd` : `mpd` controller
+ `cpu`, `memory`, `date` : pretty self-explanatory.
+ `pulseaudio` : controls volume, requires `pulseaudio` (obviously)
+ `power` : launches a `rofi` instance that has basic power controls (script to be found in my repo)

## blocks
*screenshot*
![square-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/blocks/scrot-square.png "Screenshot, in the default config of the theme")

This one is composed of three bars. For that manner, `override-redirect` was set to `false`. So, in order to have your windows not overlapping on the bars, set your wm's top gaps to some value (I use `85`)

This theme works very well with rounded borders. To enable them, uncomment the `radius=22.5` lines in each bar. To have the shadows follow the shape of the bars, set `clear-shadow` to `false` in your `compton.conf`.

*screenshot, with rounded borders*
![rounded-screenshot](https://raw.githubusercontent.com/ngynLk/polybar-themes/master/blocks/scrot-rounded.png "Screenshot, with rounded borders")


**Fonts used:**
+ SF Mono
+ Font Awesome 5

**Modules:**
+ `wsnumber` : displays the workspace number. It uses a script included in the repo, uses `jq` as a dependency (credits to Airblader, on some random forum). Works only on i3. For other wms, you might want to use `wmctrl` or something else.
+ `xwindow` : displays window name
+ `mpd` : mpd controller.
+ `pulseaudio` : controls volume w/ `pulseaudio`
+ `date` : displays date and time (24h format)
+ `power` : launches a `rofi` instance, script to be found on my scripts repo (might not really look well with this theme...)
+ *(optional)* `i3` : manages i3 workspaces with some cool round icons, just place it on the `i3` bar instead of `wsnomber`. You can see it in the second screenshot
