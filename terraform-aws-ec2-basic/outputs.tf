output "default_vpcrfirst_subnet" {
  value       = [for s in data.aws_subnet.this : s.id][0]
  description = "ID of the first subnet of the default VPC"
}

output "ami_id" {
  value       = data.aws_ami.this.id
  description = "AMI ID of the EC2 instance"
}

output "instance_public_ip" {
  value       = aws_instance.this[*].public_ip
  description = "Public ip of the EC2 instance"
}

output "instance_private_ip" {
  value       = aws_instance.this[*].private_ip
  description = "Public ip of the EC2 instance"
}
