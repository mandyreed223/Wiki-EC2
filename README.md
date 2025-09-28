# **EC2 DokuWiki install**

In this project I created a user data script that automatically downloads, extracts and sets up a DocuWiki webpage

## **Requirements**

- Use Amazon EC2
- Create user script
   - Install Apache or NGINX
   - Download and extract DocuWiki
   - Set permissions and ownership
   - Create 3 Wiki pages
       - home.txt
       - aws_notes.txt
       - linux_commands.txt
- Wiki must be fully functional immediately upon EC2 launch
  
## **How to**

1. Launch EC2 instance (I used Amazon Linux 2023 with t.3 micro)
2. Enter user data script in *User data* field under advance details
3. Launch instance and copy public IP address to test site functionality
