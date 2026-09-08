#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Project06 Website Working!</h1><h2>Host: $(hostname -f)</h2><p>Time: $(date)</p>" > /var/www/html/index.html
