# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's rubygems bin if it exists
if [ -d "$HOME/.gem/ruby/1.8/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
fi

# setup Oracle environment, if it's available
if [ -x /usr/lib/oracle/xe/app/oracle/product/10.2.0/server/bin/oracle_env.sh ] ; then
    . /usr/lib/oracle/xe/app/oracle/product/10.2.0/server/bin/oracle_env.sh
fi

