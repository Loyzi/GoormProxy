apt update -y
apt upgrade -y
apt install htop nano tmux -y
wget https://github.com/z3APA3A/3proxy/archive/0.9.3.tar.gz
tar xzf 0.9.3.tar.gz
cd 3proxy-*
make -f Makefile.Linux
mkdir -p /var/log/3proxy
mkdir /etc/3proxy
cp bin/3proxy /usr/bin/
cd /etc/3proxy ; wget https://raw.githubusercontent.com/Loyzi/GoormProxy/main/3proxy.cfg
cd ~ ; rm 0.9.3.tar.gz ; rm -rf 3proxy-0.9.3 ; rm install.sh
tmux new-session -s socks
GREEN='\033[1;32m'
BLUE='\033[1;34m'
WHITE='\033[1;37m'
echo
echo
echo
echo "${GREEN}Installation successful!"
echo "${BLUE}Command to start proxy : ${WHITE}/usr/bin/3proxy /etc/3proxy/3proxy.cfg"
echo
echo "Port : 1080"
echo "Login without password"
echo "Combination for detach : Ctrl+B+D"
echo
echo
echo
