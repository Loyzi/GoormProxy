apt update -y
apt upgrade -y
apt install htop tmux -y
wget https://github.com/z3APA3A/3proxy/archive/0.9.3.tar.gz
tar xzf 0.9.3.tar.gz
cd 3proxy-*
make -f Makefile.Linux
mkdir -p /var/log/3proxy
mkdir /etc/3proxy
cp bin/3proxy /usr/bin/
cd /etc/3proxy ; wget https://raw.githubusercontent.com/Loyzi/GoormProxy/main/3proxy.cfg
cd ~ ; rm 0.9.3.tar.gz ; rm -rf 3proxy-0.9.3
tmux new-session -s socks
echo "Installation successful!"
echo "Command to start proxy: /usr/bin/3proxy /etc/3proxy/3proxy.cfg"
echo "Login without password"
echo "Combination for detach: Ctrl+B+D"
