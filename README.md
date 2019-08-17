adbtools
========

## What's This ?
A set of shell(bash) scripts, which are the syntax sugar for adb(Android Debug Bridge) command.

## Description
### adb_shell
Same as `adb shell` except replacing CRLF to LF at every end of line in its result.

### adb-sendkey
Sending keyboard inputs from PC to an Android device as if you are typing the keyboard on Android.

### adb-parsekey
easy parser for `adb devices -l`.

## Demo

## VS. 

## Requirement
### All
* adb command on your PC (linux, Macos, Windows).

### adb-sendkey
* `input` command on your android device.

## Usage
See the help messages:
```shellscript
adb_shell --help
adb-sendkey --help
adb-parsedev --help
```

## Install

## Contribution

## Licence
[GPL v3](https://www.gnu.org/licenses/lgpl.txt)

## Author
[for2ando](https://github.com/for2ando)
