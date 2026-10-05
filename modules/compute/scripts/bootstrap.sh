#!/bin/bash
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

# Open port 80 on the instance's local firewall.
# The security list alone isn't enough - this is the same
# firewall-cmd step from the manual build.
firewall-cmd --permanent --zone=public --add-port=80/tcp
firewall-cmd --reload

# Page identifies which node served it, so you can see
# the load balancer alternating between backends.
echo "<h1>Served by $(hostname)</h1>" > /var/www/html/index.html