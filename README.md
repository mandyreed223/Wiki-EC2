# **EC2 DokuWiki install**

In this project I created a user data script that automatically downloads, extracts and sets up a DocuWiki webpage

## **Requirements**

- Use Amazon EC2 (script was tested on an Amazon Linux image)
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

1. Launch EC2 instance (Amazon Linux 2023 with t.3 micro)
2. Enter user data script in *User data* field under advance details
3. Launch instance and copy public IP address to test site functionality

## **Goal**

The goal of this project is to practice hands-free infrastructure automation by deploying a fully functional wiki system (DokuWiki) on AWS. Instead of setting up servers manually, the entire process is automated using an EC2 instance, Linux configuration, and a user data script.

By the end of the deployment:

- The server is launched and configured automatically

- DokuWiki is installed and ready to use on first boot

- Essential wiki pages are pre-created through shell scripting

- No manual setup is required, showcasing the power of automation and Infrastructure-as-Code principles

This project simulates the type of repeatable, automated provisioning used in real-world cloud engineering and DevOps pipelines.
