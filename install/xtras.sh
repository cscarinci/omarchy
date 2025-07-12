if [ -z "$OMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator \
    spotify dropbox-cli zoom \
    libreoffice \
    gnome-keyring \
    localsend-bin
fi

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-sync-applications || true
