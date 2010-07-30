# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# load files from .profile.d if they exist
for i in `ls "$HOME"/.profile.d/[0-9][0-9]*.profile 2>/dev/null`; do
    . "$i"
done
unset i

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -e "$HOME/.profile.`hostname`" ]; then
    . "$HOME/.profile.`hostname`"
fi
