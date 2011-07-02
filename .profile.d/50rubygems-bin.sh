# set PATH so it includes system rubygems bin if it exists
if [ -d "/var/lib/gems/1.8/bin" ] ; then
    PATH="/var/lib/gems/1.8/bin:$PATH"
fi
