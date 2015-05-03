#! /bin/bash
#
# setup.sh
# Copyright (C) 2013 george <george@george-VirtualBox>
#
# Distributed under terms of the MIT license.
#


FILE="gjump.sh"
TARGET="/etc/"
BASHRC="/etc/bash.bashrc"

case $1 in
    "install")
        cp $FILE $TARGET
        echo "source $TARGET$FILE" >> $BASHRC
    ;;
    "uninstall")
        rm $TARGET$FILE
        sed -i "s/source.*$FILE//" $BASHRC
    ;;
    *)
        echo 'do nothing'
    ;;
esac


