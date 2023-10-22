# <div align="center">Networking Basics</div>
### 1. How to find ip of a domain?
```bash
nslookup [domain name] 

#ex : 
nslookup google.com
```
or
```bash
dig [domain name]

#ex :
dig google.com
```
### 2. How to find router ip assigned by the ISP?
```bash
curl ifconfig.me
```
### 3. How to find private ip of host machine?
```bash
ip a
 ```
 or
 ``` 
 ifconfig
 ```
### 4. How to change private ip of a ubuntu machine?
```bash
# Edit yaml file inside "/etc/netplan/" and assign desire address

#ex :
sudo nano /etc/netplan/50-cloud-init.yaml
```
### 5. Check ports open in the current system?
```bash
ss -tulpn
```
### 6. Enable port 80 and 3306 in vm
```bash
sudo ufw allow 80
sudo ufw allow 3306
```
### 7. Download any file or software using terminal
```bash
wget [url]

#ex :
wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
```
### 8. Get web data response from terminal
```bash
curl [url]

#ex :
curl google.com
```
### 9. Install nginx webserver in the vm and access the welcome nginx page from web browser
```bash
sudo apt update
sudo apt install nginx
```
<!-- show img -->
<img src="./img/nginxwelcomepage.png" />

