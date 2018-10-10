FROM falcox/odroidxu-arch-arm-v7hf
MAINTAINER Falco Prescher

RUN pacman-key --init
RUN pacman-key --populate archlinuxarm
RUN pacman -Syy --noconfirm
RUN pacman -S nginx --noconfirm
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80 443
VOLUME /usr/share/nginx/html
RUN pacman -Scc --noconfirm
STOPSIGNAL SIGTERM
CMD /usr/bin/nginx -c /etc/nginx/nginx.conf -g "pid /var/run/nginx.pid; daemon off;"


