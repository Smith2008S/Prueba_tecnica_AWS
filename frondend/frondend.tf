data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
        owners = ["099720109477"]
    }

resource "aws_instance" "web" {
    ami                     = data.aws_ami.ubuntu.id
    instance_type           = "t2.micro"
    key_name                = "key_production"
    subnet_id               = var.subnet_id
    vpc_security_group_ids  = var.vpc_security_group_ids
    user_data = <<-EOF
        #!/bin/bash
        sudo curl -sSL https://get.docker.com/ | sh
        sudo docker run --detach --publish 80:3000 smith2008/reactjs-hw 
        EOF 
    
    tags = {
        Name = "Frondend-Instance"
    }

}

