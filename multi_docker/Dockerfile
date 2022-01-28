# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openssh-server sudo
RUN apt-get -y upgrade
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN echo 'root:mypassword' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN adduser pedro
RUN sudo usermod -a -G sudo pedro
RUN echo 'pedro:mypassword' | chpasswd
RUN echo 'pedro ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN mkdir /home/pedro/.ssh
WORKDIR /app
COPY id_rsa.pub /root/.ssh/authorized_keys
COPY id_rsa.pub /home/pedro/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
