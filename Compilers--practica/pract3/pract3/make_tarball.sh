#!/bin/bash -ue

PRACT=3

if [ $# -ne 1 ]
then
    echo "Usage: ./$0 <GROUP>" 1>&2
    exit 1
fi
GROUP=$1

FILENAME=$(printf 'pract%.2i_group%.2i.tar.gz' $PRACT $GROUP)
FILES="Pract3.g4"

tar -cf ${FILENAME} ${FILES}
echo Done, tarball is named \'${FILENAME}\'
