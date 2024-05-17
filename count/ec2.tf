
resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    #count = 3
    count = length(var.instance_name)
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = var.instance_name[count.index]
    }
}    



resource "aws_security_group" "allow_ssh"{
    name = "allow_ssh"
    description = "allowing ssh access"

      ingress{ 
       from_port   = 22
       to_port     = 22
       protocol = "tcp"
       cidr_blocks  = ["0.0.0.0/0"]
       
     
}

    
    egress{ 
       from_port   = 0
       to_port     = 0
       protocol = "-1"
       cidr_blocks  = ["0.0.0.0/0"]
      
     
}

    tags = {
        Name = "allow_ssh"
        createdBy = "Arunkumar"
    }
}