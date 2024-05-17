variable "instance_name" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"

    }
}

variable "common_tags"{
    type = map
    default = {

    project = "expense"
    terraform = true
    }
}

#r53 variables
variable "zone_id" {
    default = "Z0172930V2QGB67RMF88"
}

variable "domain_name" {
    default = "daredevops.online"
}