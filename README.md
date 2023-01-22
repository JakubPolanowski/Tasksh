# `TASKSH` - Task(sh)

`TASKSH` is a minimalistic POSIX-compliant cli tool for task management loosely inspired by [taskwarrior](https://github.com/GothenburgBitFactory/taskwarrior) and [org-mode](https://orgmode.org/).

## Current Status

Feature complete and actively maintained.

That being said, feature requests are welcome so long as they do not incur dramatic reworks or overly complicate the code base. After all, this is a minimalistic task management tool, for more advanced use cases, something like [taskwarrior](https://github.com/GothenburgBitFactory/taskwarrior) or [org-mode](https://orgmode.org/) is will be better options.

## Platforms

As this is POSIX-compliant, this should work on all POSIX systems as long as the have the typical gnu utilities (`sed`, `grep`, `mv`, etc.)

* Linux
  * Tested, should work on all modern distributions
  * Note that `grep -e` is used within `TASKSH` so some ancient distributions that have a very old version of `grep` that does not support `-e` will not run `TASKSH`
* BSD
  * In theory should work, however not tested
* MacOS
  * In theory should work, however not tested
* Windows
  * With the exception of `WSL`, `TASKSH` will not work on Windows
  * There are no plans to make `TASKSH` compatible with Window (due to the POSIX and gnu utilities requirements)

## Installation

The entirety of `TASKSH` is within the `tasksh` shell script file. Therefore as long as the system is one of the supported/POSIX compatible systems and has the basic gnu utilities (see **Platforms** section), then the script should would out of the box.

Therefore to install it, either clone to repository and copy/move the script a location that is one your `$PATH` or download just the `tasksh` script, mark it executable, then add it to a folder on your `$PATH`

### General Installation

1. `git clone git@github.com:JakubPolanowski/Tasksh.git`
2. `cd Tasksh`
3. Make `tasksh` executable 
   * if cloned on a Linux/Unix system, permissions should already be correct
   * `chmod a+x tasksh`
4. Move to a folder on your path
   * For instance you can use a folder in your home folder called `scripts`
     * If you don't already have a `scripts` folder that is on your `$PATH`, then
       1. `mkdir ~/scripts`
       2. `echo "PATH=\$PATH:~/scripts" >> ~/.bashrc`
         * Note that this assumes you are using bash as your shell
       3. `source ~/.bashrc`
   * `mv tasksh ~/scripts`

## Usage

`TASKSH` has extensive self documentation via `help`. To see the help information run `tasksh -h`.

### Modes

`TASKSH` works by have modes that each each handle a different operation (see `tasksh -h` for more information). For example `add` adds a task, `list` lists tasks, `view` views a specific task, and `agenda` provides a interactive version of `list`

Within each mode the available options and usage examples can be found via the `-h` or `--help` option, for instance `tasksh add -h`.

### Example Usage

`TASKSH add This is My First Task`

This adds a task with the title "This is My First Task"

Then with `TASKSH list`, all tasks will be listed

Or `TASKSH agenda` can be used to get a more interactive list.