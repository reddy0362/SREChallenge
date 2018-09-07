variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "us-west-2"
}
 
variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}
 
variable "key_path" {
  description = "SSH Public Key path"
  default = "/root/prabhakar/deploy-nodeapp-on-aws-with-ansible-tf/foxutech.pub"
}
 
variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "./package.sh"
}
