#!/bin/bash

# Update
sudo yum update -y
 
# Install apache and php 
sudo yum install -y httpd php

# Enable
sudo systemctl enable httpd
sudo systemctl start httpd

# Download wiki
wget https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz

# Rename
mv dokuwiki-stable.tgz dokuwiki.tgz

# Extract to webroot
sudo tar xpvf dokuwiki.tgz --strip-components=1 -C /var/www/html

# Create wiki pages
echo "DokuWiki project for LUIT" | sudo tee /var/www/html/data/pages/start.txt
echo "Welcome to Mandy's wiki page" | sudo tee /var/www/html/data/pages/home.txt
echo -e "  * IAM: Manage users/roles\n  * EC2: Elastic Compute Cloud in AWS\n  * S3: Bucket storage in AWS" | sudo tee /var/www/html/data/pages/aws_notes.txt
echo -e "  * ls - list files and folders\n  * cd - change directory\n  * pwd - what folder you are in\n  * mkdir - make directory" | sudo tee /var/www/html/data/pages/linux_commands.txt

# Set permissions
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Apache
sudo systemctl restart httpd
