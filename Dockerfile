FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server curl git wget   -y
RUN curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun   -y
RUN docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S6" -e WEB_VNC=true --device /dev/kvm --name android-container budtmo/docker-android:emulator_9.0
RUN bash install_6.0.sh   -y
