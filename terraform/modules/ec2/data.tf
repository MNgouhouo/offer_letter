data "aws_security_group" "offer-letter" {
  name = "s7-sg" # Replace with your security group name 
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"] # Replace `20.04` with your preferred version
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical's owner ID for Ubuntu AMIs
}