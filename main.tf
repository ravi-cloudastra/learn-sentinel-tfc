provider "aws" {
  region = var.region
}

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "ubuntu" {
  ami                    = "ami-0557a15b87f6559cf"
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
