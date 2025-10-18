resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = merge(   # merge is a built-in function used to combine maps into one product
      local.common_tags,   # project= roboshop,teraform-true
      {
        Name= "${local.common_name}-tfvars-multi-env"  #rboshop-dev-tfvars-multi-env
      }
    )
}

resource "aws_security_group" "allow_all" {
  name   = "${local.common_name}-tfvars-multi-env"
      

  egress {
    from_port        = var.from_port 
    to_port          = var.to_port 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr # internet
  }

  ingress {
    from_port        = var.from_port 
    to_port          = var.to_port 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr# internet
  }

  tags = merge(
      local.common_tags,
      {
        Name= "${local.common_name}-tfvars-multi-env"
      }
    )

}