Streamhost
Running a node.js project with ansible
All the files for running this are in the cloud-courses folder

ANSIBLE

run by using:

ansible-playbook playbook.yml -i hosts

Set your hosts in a hosts file

The server is now up at http://51.15.98.200:3000

TERRAFORM
Terraform file: main.tf

put your organization id and token in the file

use 
terraform init

then terraform plan and 

then terraform apply

PACKER
Packer file: packer.json

you need to first set your secret_token, organization id and server name as environment variables under:
TOKEN, ORG_ID and SERVER_NAME

Just run packer build packer.json