# openvpn-docker-alpine
Openvpn in Docker Alpine container

How to use
```
git clone https://github.com/0dataexpert0/openvpn-docker-alpine.git
cd openvpn-docker-alpine
./init.sh
```
Start openvpn
```
docker run -d --name=openvpn1 -v ~/openvpn-docker-alpine/volumes:/etc/openvpn --privileged -p 1194:1194/udp --net=host openvpn1
```
after generate keys for user
```
./easy-rsa/easyrsa3/easyrsa build-server-full Your_User nopass
```
and create client.ovpn from client.ovpn.example

---
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
```
