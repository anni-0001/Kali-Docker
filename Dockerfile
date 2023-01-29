FROM kalilinux/kali-rolling

RUN apt update 
RUN apt install openssh-server sudo sshpass tcpdump iputils-ping nmap gobuster vim tmux net-tools -y
RUN apt install netcat-traditional -y
RUN echo 'root:password' | chpasswd
# COPY kali-wordlists/ /usr/share/wordlists
# CMD []
CMD ["/usr/local/sbin/tcpconf.sh"]
