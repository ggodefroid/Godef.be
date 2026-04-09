#!/bin/bash

IMAGE_URL="https://godef.be/c/croissant.jpg"
IMAGE_NAME="wallpaper_$(date +%s).jpg"
WALLPAPER_DIR="$HOME/Images/Fonds_decran"
IMAGE_PATH="$WALLPAPER_DIR/$IMAGE_NAME"

mkdir -p "$WALLPAPER_DIR"

if curl -s -L -o "$IMAGE_PATH" "$IMAGE_URL"; then
    gsettings set org.gnome.desktop.background picture-uri "file://$IMAGE_PATH"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$IMAGE_PATH"
    echo "Done >:D"
else
    echo "Err :c"
    exit 1
fi
