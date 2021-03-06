material-linux-theme
====================

Auto-generated set of consistent themes for a Linux desktop based on the Android Material
color palette. The goal is to easily generate matching themes for all the apps in your
Linux desktop. Currently only a dark theme is provided.

The theme generator depends on the [python-256](https://github.com/magarcia/python-x256)
package.

Themes for the following apps are available at this point:
* KDE 5 and Plasma 5
* GTK 2
* GTK 3
* i3 Window Manager
* Emacs
* Midnight Commander
* XTerm


Installation
------------

The themes in this repository are already generated and can be found in the `out` folder.
If you wish to re-generate them after making some changes, just run `generate-themes`. It
is not a necessary step to use the themes though.

To start using a theme, you can manually copy/edit the generated theme config files of the
relevant applications from the `out/<theme_name>` folder. However, for convenience, there
is also an automatic installer which will patch the appropriate config files. To run the
installer, run: `install-themes`.

**Note! The installation script has only been tested on some Ubuntu versions, and for what
I know might eat all your data (although it shouldn't). Use at your own risk, and please
report any problems.**

The installer will add/edit:
* KDE theme files in `~/.local/share/plasma/desktoptheme/material-breeze` and
  `.local/share/color-schemes/Material.colors` as well as Plasma theme configuration in
  `~/.config/plasmarc`. Note that you need to select the Material color scheme manually in
  your KDE System Settings after the installation.
* GTK2 configuration/theme file `~/.gtkrc`
* GTK3 configuration/theme file `~/.config/gtk-3.0/gtk.css`
* Midnight Commander config files `~/.mc/ini` and `~/.mc/skins/material.ini` or
  `~/.config/mc/ini` and `~/.config/mc/skins/material.ini` depending on the version of MC you
  are using.
* i3 Window Manager config file `~/.i3/config`
* Emacs theme files in `~/.emacs.d/themes`. Note that you need to manually setup the theme
  in your Emacs configuration. The installer will print ELisp commands that you should add
  to your personal Emacs initialization files.
* Xresources by merging in the contents of `~/.Xresources-xterm-colors` using `xrdb`


Design
------

```
                                  +--------------------------------+
                                  |     for specific use-cases     |
                                  |                               \|/
raw_colors --> color_names --> palette --> common_theme --> [app_theme]+

<          Fixed         >     <   Defines the Theme  >     <  Fixed  >
```

* `raw_colors` - Raw color values
* `color_names` - Human-friendly color names of the Material color palette
* `palette` - Selects a subset of colors used in the theme
* `common_theme` - Assigns palette colors to common use-cases, provides unified look
  across all the applications
* `app_theme` - Multiple application specific themes that assigns colors to
  application-specific UI elements


### Palette ###

The palette consists of the following entries:
- `bg` - background color
- `fg` - foreground color (mostly text)
- `primary` - primary UI element color
- `secondary` - secondary UI element color
- `accent1` - first accent color
- `accent2` - second accent color
- `success`, `warning`, `error` - colors associated with states
- `semantic1` - `semantic11` - colors used to indicate various semantics, e.g. for syntax
  highlighting or file type indication in file managers
- ANSI colors, e.g. `red`, `light-red`, `dark-red` - colors assigned to ANSI color names
  for all use-cases requiring a specific color (e.g. in a terminal)

Most colors in the palette can have 3 variants:
- `normal` - nominal color
- `weak` - providing lower contrast on the background (e.g. darker variant in dark theme
  and lighter variant in light theme)
- `strong` - providing higher contrast on the background (e.g. lighter variant in dark
  theme and darker variant in light theme)
