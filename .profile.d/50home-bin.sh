# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.gem/ruby/1.8/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
fi
