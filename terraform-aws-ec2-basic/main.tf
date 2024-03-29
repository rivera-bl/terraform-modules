# TODO: check if its possible to use dynamic blocks for defining sg rules outside of module
# TODO: fix the problem of count.index for the subnet_id of the EC2 instances, using a for_each may be a fix

locals {
  ami_name = var.ami_name
}

resource "aws_instance" "this" {
  count                       = var.count_instances
  associate_public_ip_address = true
  instance_type               = var.instance_type
  ami                         = var.ami_id != null ? var.ami_id : data.aws_ami.this.id
  key_name                    = var.public_key_file != null ? aws_key_pair.this[0].key_name : null
  subnet_id                   = var.subnet_id != null ? var.subnet_id : [for s in data.aws_subnet.this : s.id][count.index]
  # vpc_security_group_ids      = [aws_security_group.public.id]
  user_data                   = var.user_data

  tags = {
    Name = "${var.service_name}-${count.index}"
  }
}

resource "aws_key_pair" "this" {
  count      = var.public_key_file != null ? 1 : 0
  key_name   = "${var.service_name}-key"
  public_key = file(var.public_key_file)
}

# resource "aws_security_group" "public" {
#   name   = "${var.service_name}-sg"
#   vpc_id = var.vpc_id != null ? var.vpc_id : data.aws_vpc.this.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = var.sg_cidr_blocks_ingress
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = var.sg_cidr_blocks_ingress
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = var.sg_cidr_blocks_ingress
#   }

#   ingress {
#     from_port   = 8080
#     to_port     = 8080
#     protocol    = "tcp"
#     cidr_blocks = var.sg_cidr_blocks_ingress
#   }

#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "ICMP"
#     cidr_blocks = var.sg_cidr_blocks_ingress
#   }

#   egress {
#     from_port       = 0
#     to_port         = 0
#     protocol        = "-1"
#     cidr_blocks     = var.sg_cidr_blocks_egress
#     prefix_list_ids = []
#   }
# }
