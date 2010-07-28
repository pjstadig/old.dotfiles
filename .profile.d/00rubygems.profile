# set PATH so it includes user's rubygems bin if it exists
if [ -d "$HOME/.gem/ruby/1.8/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
fi

# set PATH so it includes system rubygems bin if it exists
if [ -d "/var/lib/gems/1.8/bin" ] ; then
    PATH="/var/lib/gems/1.8/bin:$PATH"
fi
