# set PATH so it includes maven's bin if it exists
if [ -d "$HOME/src/apache-maven-3.0/bin" ] ; then
    PATH="$HOME/src/apache-maven-3.0/bin:$PATH"
fi
