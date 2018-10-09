FROM alarm-v7-base
MAINTAINER Falco Prescher
ENV REFRESHED_AT 2018-10-09

RUN pacman-key --init
RUN pacman-key --populate archlinuxarm
RUN pacman -Syu --noconfirm
