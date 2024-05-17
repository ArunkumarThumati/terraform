locals {

    ami_id = "ami-090252cbe067a9e58"
    sg_id  = "sg-0058196ad045365e8"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

    tags = {
         Name = "locals"
    }

}