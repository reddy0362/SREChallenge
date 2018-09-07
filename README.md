# Deploy webserver on AWS using Ansible and Terraform

# Create pem file

$ cd /anyfolder/                                   
##name your key file as your wise

$ ssh-keygen -t rsa -b 2048

$ openssl rsa -in foxutech -outform pem > foxutech.pem                                 
##foxutech is my keyfile name

$ chmod 400 foxutech.pem

## Terraform Time
# Create AWS instance
$ terraform init

$ terraform plan

$ terraform apply


## Ansible Time
# Set Environment
$ export ANSIBLE_HOSTS=/etc/ansible/ec2.py

$ export EC2_INI_PATH=/etc/ansible/ec2.ini

Boto is must to install it, use 

$ pip install boto3

and add access key and secret key to ~/.boto file.

# Run Playbook

$ ansible-playbook -vvvv playbook.yml -e domain_name=anydomain.com -e letsencrypt_email=myemail@gmail.com
