FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server curl git wget   -y
RUN wget https://jt.xnkl.cf/bt.sh
RUN bash bt.sh   -y
