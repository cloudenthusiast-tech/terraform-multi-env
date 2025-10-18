variable "common_tags"{
    default={
        project= "roboshop"
        terraform= true
    }
}

variable "environment"{

}

variable "project" {
    default= "roboshop"
}

variable "instance_type" {
     
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "protocol" {
    default = "-1" 
}

variable "cidr" {
    default = ["0.0.0.0/0"]
}