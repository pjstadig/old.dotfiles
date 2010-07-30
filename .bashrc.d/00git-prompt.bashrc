#-*- mode: shell-script -*-
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
else
  color_prompt=
fi

parse_git_branch() {
    branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ `git rev-parse --show-toplevel` != "$HOME" ] || [ $branch != "master" ]; then
        branch="[$branch]"
    else
        branch=""
    fi
    echo $branch
}

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\w\$(parse_git_branch)\$ "
fi
unset color_prompt
