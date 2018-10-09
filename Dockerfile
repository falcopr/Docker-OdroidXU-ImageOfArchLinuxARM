FROM odroidxu-arch-arm-v7hf-base
MAINTAINER Falco Prescher
ENV REFRESHED_AT 2018-10-09

RUN pacman-key --init
RUN pacman-key --populate archlinuxarm
COPY ./mkinitcpio.conf /etc/mkinitcpio.conf
RUN pacman -Syu --noconfirm
# RUN pacman -Rs groff man-db --noconfirm
RUN pacman -Scc --noconfirm

