#!/bin/bash
sudo yum install httpd -y
echo "<h1> This respponse is from web server 02 </h1>" >/var/www/html/index.html
sudo chkconfig httpd on
service httpd start
