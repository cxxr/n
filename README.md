# n.sh

Pages through files N lines at a time

## Usage

n pages through a file and dumps you back at the command line so that you can
copy/paste or build up a command line over time.

    $ n file.txt
    first
    ten
    lines
    of
    your
    file
    go
    here
    believe
    me
    $ n
    the
    next
    ten
    lines
    //etc
    $ n 3
    the
    three lines after
    // etc

## Install

Add to your .bashrc/.zshrc/.shrc:

. /path/to/n.sh

n keeps a state file ~/.nstate for its purposes


