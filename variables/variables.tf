variable "image_id"{
    type        = string
    default     = "ami-090252cbe067a9e58"
    description = "RHEL-9 "
}

variable "instance_type"{
    type   = string
    default = "t3.micro"

}

variable "tags"{
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module  = "DB"
        Name = "DB"
    }
}

variable "sg_name"{
    default = "allow_ssh"
}

variable "sg_description"{
    default = "RHEL 9 AMI ID"
}

variable "ssh_port"{
    default = 22
}
 
variable "protocol"{
    default = "tcp"
}

variable "allowed_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}