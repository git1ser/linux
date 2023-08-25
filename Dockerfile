FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server curl git wget   -y
RUN wget https://panel.wang/install/install_6.0.sh
RUN bash install_6.0.sh   -y
