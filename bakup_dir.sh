#!/bin/bash

SRC="/etc"
DEST="/backup"
FILENAME="backup_$(date +%F_%H-%M-%S).tar.gz"

sudo mkdir -p $DEST
sudo tar -czf $DEST/$FILENAME $SRC

echo "backup completed: $DEST/$FILENAME"
