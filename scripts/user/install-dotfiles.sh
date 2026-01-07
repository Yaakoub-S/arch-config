#!/bin/sh

display_home_tilde(){
		printf '%s' "$1" | sed "s|^$HOME|\~|g"
}

display_link(){
		printf '%s -> %s\n' "$(display_home_tilde "$1")" \
				"$(display_home_tilde "$2")"
}

symlink() {
		display_link "$1" "$2"
		ln -sf "$1" "$2"
}

# Ensure ~/.config exists
HOME_CONFIG_DIR="$HOME/.config"
mkdir -p "$HOME_CONFIG_DIR"

# Setting up symlinks for config files
set -- ghostty \
	waybar \
	git \
	yazi \
	sway \
	rofi \
	qutebrowser/config.py \
	fontconfig

REPO_CONFIG_DIR="$(cd "$(dirname "$0")/../../config" && pwd -P)"
for f in "$@"; do
	src="$REPO_CONFIG_DIR/$f"
	dst="$HOME_CONFIG_DIR/$f"
	[ -e "$dst" ] && [ ! -L "$dst" ] && rm -rf "$dst"
	mkdir -p "$(dirname "$dst")"
	symlink "$src" "$dst"	
done
