FROM kalilinux/kali-rolling

# RUN apt update && apt -y install kali-linux-large

RUN apt update

RUN apt install nmap -y

RUN apt install wget -y

RUN apt install curl -y

RUN apt install gpgv2 autoconf bison build-essential postgresql libaprutil1 libgmp3-dev libpcap-dev openssl libpq-dev libreadline6-dev libsqlite3-dev libssl-dev locate libsvn1 libtool libxml2 libxml2-dev libxslt-dev wget libyaml-dev ncurses-dev  postgresql-contrib xsel zlib1g zlib1g-dev -y

RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall

RUN ls -la msfinstall

RUN chmod 755 msfinstall

RUN ./msfinstall

ENTRYPOINT ["tail", "-f", "/dev/null"]