# Xephyr Now

Script to quickly launch Xephyr (X11 in X11).

## Supports

- window resizing (resolution change) - you can adjust detection frequency in i3config
- random DISPLAY value generating
- multiple windows inside
- OBS recording of creted Xephyr server (Screen Capture (XSHM)->Advanced Settings->X Server) - this can be handy if you experience screen tearing when recording your main X Server, or if you want to prevent accidental leakage of your opened windows

## Usage

Starts Libreoffice Calc:

```bash
path/to/xephyrnow/start.sh localc
```

Opens a file:

```bash
path/to/xephyrnow/start.sh xdg-open ~/spreadsheet.ods
```

Starts Xephyr and gives you shell to run your commands:

```bash
path/to/xephyrnow/start.sh bash
```

## Installation

```bash
sudo apt install coreutils xserver-xephyr i3 x11-xserver-utils
```

Then download this repository to some directory. You can rename `start.sh` and add this directory to `$PATH`.

## Chromium-based programs

By default, Chromium-based programs check if another instance is running and try to pass commands to it, to avoid having multiple instances open. If you want to run instances of such program inside and outside Xephyr at the same time, pass `--user-data-dir=somedirectory` flag to one of them.
