if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
    color_prompt=yes
else
    color_prompt=
fi

join() {
    if [ -n "$1" ] && [ -n "$2" ]; then
        echo "$1|$2"
    else
        if [ -n "$1" ]; then
            echo $1
        fi
    fi
}

parse_git_branch() {
    toplevel=`git rev-parse --git-dir 2> /dev/null`
    if [ -n "$toplevel" ]; then
        toplevel=`readlink -f $toplevel | xargs dirname`
        branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
        pair=`yoke -s 2> /dev/null`
        if ([ $toplevel != $HOME ] || [ $branch != "master" ]) || [ -n "$pair" ]; then
            branch="[$(join $branch $pair)]"
        else
            if [ $toplevel == $HOME ]; then
                branch=""
            fi
        fi
    fi
    echo $branch
}

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\w\$(parse_git_branch)\$ "
fi
unset color_prompt
