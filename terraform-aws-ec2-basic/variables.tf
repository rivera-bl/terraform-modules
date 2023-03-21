variable "service_name" {
  type        = string
  description = "Name of the service that this resources belong"
}

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Type of compute instance"
}

variable "ami_name" {
  default     = "amzn2-ami-hvm-*-x86_64-gp2"
  type        = string
  description = "AMI name owned by amazon"
}

variable "public_key_file" {
  default     = "~/.ssh/ec2-common.pub"
  type        = string
  description = "Path to the public key for the EC2 instance"
}

variable "user_data" {
  default     = null
  type        = string
  description = "User data for the EC2 instance"
}

variable "count_instances" {
  default     = 1
  type        = number
  description = "Number of instances to deploy"
}

variable "subnet_id" {
  default     = null
  type        = string
  description = "ID of the subnet to launch the EC2 instance"
}

variable "vpc_id" {
  default     = null
  type        = string
  description = "ID of the vpc of the security group"
}

variable "ami_id" {
  default     = null
  type        = string
  description = "AMI Id"
}


