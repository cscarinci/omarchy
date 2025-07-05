yay -S --noconfirm --needed sddm
if sudo systemctl is-active display-manager.service; then
    sudo systemctl disable display-manager.service
fi
sudo systemctl enable sddm.service

yay -S --noconfirm --needed power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon.service

yay -S --noconfirm --needed \
  imagemagick \
  github-cli \
  lazygit

yay -S --noconfirm --needed \
    emacs \
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

