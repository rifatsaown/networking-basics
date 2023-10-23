 # Qus List 
# 1. how to find ip of a domain?
# 2. how to find router ip assigned by the ISP?
# 3. how to find private ip of host machine?
# 4. how to change private ip of a ubuntu machine?
# 5. check ports open in the current system?
# 6. enable port 80 and 3306 in vm
# 7. download any file or software using terminal
# 8. get web data response from terminal
# 9. install nginx webserver in the vm and access the welcome nginx page from web browser
# 10. create a mysql database server in vm and access it from host machine
# 11. replace default nginx page with an index.html page containing your name and access it from web browser
# 12. display the same index.html file in "your_name.com" by utilizing hostname of vm and host machine



# 1.
# nslookup [domain name] or dig [domain name]
nslookup google.com
dig google.com

# 2.
curl ifconfig.me

# 3.
ip a 
#or
ifconfig

# 4. 
# Edit yaml file inside "/etc/netplan/" and assign desire address

# 5.
ss -tuln

# 6.
sudo ufw allow 80 
sudo ufw allow 3306

# 7.
wget URL_of_the_file , 
curl -O URL_of_the_file

# 8.
curl URL

# 9.
sudo apt install nginx
sudo systemctl status nginx
# open browser and type localhost 
#                                 or 
#                                    type ip address of the vm in the browser of host machine 

# 10.
sudo apt install mysql-server
sudo systemctl status mysql
# open mysql in terminal with root user
sudo mysql
# create user and grant permission
CREATE USER 'username'@'ip-can-access/%-for-all' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'ip-can-access/%-for-all' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# exit from mysql
exit
# open host machine terminal and access mysql
mysql -u username -h ip-address-of-vm -P 3306 -p
# enter password and access mysql

# 11.
# create index.html file in /var/www/html/ and write your name in it
sudo nano /var/www/html/index.html
#remove default nginx page
sudo rm /var/www/html/index.nginx-debian.html
# restart nginx
sudo systemctl restart nginx
# open browser and type ip address of the vm in the browser of host machine and access the page

# 12.