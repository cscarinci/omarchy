# yay -S --noconfirm --needed sddm
# if sudo systemctl is-active display-manager.service; then
#     sudo systemctl disable display-manager.service
# fi
# sudo systemctl enable sddm.service

yay -S --noconfirm --needed power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon.service

yay -S --noconfirm --needed \
  imagemagick \
  github-cli \
  lazygit \
  zsh \
  kitty

yay -S --noconfirm --needed ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono

yay -S --noconfirm --needed flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update
flatpak install -y flathub app.zen_browser.zen eu.betterbird.Betterbird org.gnome.Boxes com.usebottles.bottles

yay -S --noconfirm --needed \
    emacs-wayland \
    zathura \
    zathura-pdf-poppler \
    zathura-djvu \
    zathura-cb \
    texlive-basic \
    texlive-bibtexextra \
    texlive-bin \
    texlive-binextra \
    texlive-context \
    texlive-fontsextra \
    texlive-fontsrecommended \
    texlive-fontutils \
    texlive-formatsextra \
    texlive-langenglish \
    texlive-langkorean \
    texlive-langportuguese \
    texlive-latex \
    texlive-latexextra \
    texlive-latexrecommended \
    texlive-luatex \
    texlive-mathscience \
    texlive-meta \
    texlive-metapost \
    texlive-pictures \
    texlive-plaingeneric \
    texlive-pstricks \
    texlive-publishers \
    texlive-xetex

systemctl --user enable emacs.service

cp -R ~/.local/share/omarchy/custom/* ~/.config/

echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.zprofile
