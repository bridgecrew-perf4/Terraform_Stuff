provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "myvm" {
    ami = "ami-08f63db601b82ff5f"
    instance_type = var.instancetype
}

output "Public_IP_addr" {
    value = "aws_instance.myvm.public_ip"
}