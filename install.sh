apt update
apt-get install build-essential -y
apt install curl -y
apt install p7zip-full -y
apt install git -y
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
git clone https://github.com/NixDeveeloper/x-ui-english
cd x-ui-english
go build main.go
mv main /usr/local/bin/x-ui
wget -N --no-check-certificate https://github.com/NixDeveeloper/v2ray-debian-english-multi-user/raw/main/improve.sh && chmod +x improve.sh && bash improve.sh
cd /usr/local/
mkdir x-ui
cd x-ui
wget -N --no-check-certificate -O bin.7z https://github.com/NixDeveeloper/v2ray-debian-english-multi-user/raw/main/bin.7z
7z x bin.7z
sudo x-ui >/dev/null 2>&1 &
rm -rf /root/x-ui-english
ip=$(ip route get 8.8.8.8 | awk -F"src" 'NR==1{split($2,a," ");print a[1]}')
echo "System Management Address : http://$ip:54321"
echo "username : admin"
echo "password : admin"
echo "==================================="
echo "Attention : After login, go to system setting and change admin password to protect your server"
echo "==================================="
echo "Donate Us (Crypto USDT-TRC20) : TDmwnAGjcookzT3sjhxtR67AQgTDsRiy54"