# qtile-pywal
Qtile, Pywal &amp; script to change colors on the fly.

## Preview

## one
![one](/preview/28.png)
<br />
## two
![two](/preview/38.png)
<br />
## tree
![tree](/preview/51.png)

* Distro: [ArchLabs](https://archlabslinux.com/)
* Window manager: [qtile-git](https://aur.archlinux.org/qtile-git.git)
* Bar: [stock qtile](https://aur.archlinux.org/qtile-git.git)
* Compositor [picom](https://github.com/jonaburg/picom)
* Terminal : [st](https://github.com/instantOS/st-instantos.git)
* Music Player : [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp.git)
* File Manager : [Ranger](https://github.com/ranger/ranger.git)
* Program Launcher : [rofi](https://github.com/davatorium/rofi.git)
* Info Fetcher : [pfetch](https://github.com/dylanaraps/pfetch.git)
* CLI Shell Intepreter : [fish](https://aur.archlinux.org/fish-git.git)
* Notification Daemon : [dunst](https://github.com/dunst-project/dunst.git)


### Other prerequisites
* pywal: [pywal](https://github.com/dylanaraps/pywal.git)

Relevant lines: [.config/qtile/config.py](import json)

Relevant lines: [.config/qtile/config.py](#Pywal Colors
colors = os.path.expanduser('~/.cache/wal/colors.json')
colordict = json.load(open(colors))
ColorZ=(colordict['colors']['color0'])
ColorA=(colordict['colors']['color1'])
ColorB=(colordict['colors']['color2'])
ColorC=(colordict['colors']['color3'])
ColorD=(colordict['colors']['color4'])
ColorE=(colordict['colors']['color5'])
ColorF=(colordict['colors']['color6'])
ColorG=(colordict['colors']['color7'])
ColorH=(colordict['colors']['color8'])
ColorI=(colordict['colors']['color9']))

Relevant lines: [.config/qtile/config.py](widget.Clock(
                        background=ColorH,
                        foreground = ColorZ,
                        icons_size=20,
                        padding=8
                        ),)


### Note

if ~/.config/qtile/autostart.sh don't work copy this lines to your ~/.xinitrc

walp &
qtile cmd-obj -o cmd -f restart

