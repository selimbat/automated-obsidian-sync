This repo presents a technique to automatically synchronize your obsidian vault among all your devices.

## Requirements
This technique requires your vault to be managed by git, with something like Termux on android.
For this to work, a bash shell has to be opened at some point to start the background sync process.

## Installation
All you need to install this is:
- Copying `git-utils.sh` and `automated-obsidian-sync.sh` to your `/usr/etc/` or equivalent directory
- Copying the content of this repo's `bash.bashrc` into your own `bash.bashrc` or equivalent.

Then all you need to do is open a bash shell from time to time to ensure that there's always a background process waiting to commit your notes.

That's all!
