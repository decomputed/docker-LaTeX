FROM base/archlinux
LABEL maintainer="luis@decomputed.com"

## Update pacman
RUN pacman -Syyu --noconfirm

## Install tex-related thing
RUN pacman -S --noconfirm --noprogressbar --needed texlive-core
RUN pacman -S --noconfirm --noprogressbar --needed texlive-latexextra
RUN pacman -S --noconfirm --noprogressbar --needed texlive-fontsextra

## Install make, which is useful to run complex builds
RUN pacman -S --noconfirm --noprogressbar --needed make

## Workdir will be `sources`
WORKDIR /source
VOLUME ["/sources"]