FROM decomputed/docker-latex:no-extras
LABEL maintainer="luis@decomputed.com"

## Update pacman
RUN pacman -Syyu --noconfirm

## Install tex-related thing
RUN pacman -S --noconfirm --noprogressbar --needed texlive-latexextra

## Workdir will be `sources`
WORKDIR /source
VOLUME ["/sources"]