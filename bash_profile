# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

THISHOST=$(hostname -f)
HOSTCLASS=$(hostname -f | cut -b -3)
if [ "$HOSTCLASS" = "gsc" ]; then
    export PATH=/usr2/local/gcc/10.2.0/bin:${PATH}:.
    export LD_LIBRARY_PATH=/usr2/local/gcc/10.2.0/lib64:${LD_LIBRARY_PATH}
    export MANPATH=/usr2/local/gcc/10.2.0/share/man:${MANPATH}
fi
