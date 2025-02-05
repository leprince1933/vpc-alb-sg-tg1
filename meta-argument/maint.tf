/*
count = 2
depends_on =
for each 
lifecycle
*/

/*

// depends on
resource "aws_instance" "obert1" {
    count = 2
    ami = "ami-045269a1f5c90a6a0"
    instance_type = "t2.micro"

    tags = {
      name = "prod-server${count.index +1}"
    }
  
}

resource "aws_iam_user" "user1" {
    name = "Devops"
    depends_on = [ aws_instance.obert1 ]
  
}
output "ip" {
    value = aws_instance.obert1[*].public_ip
  
}
*/
/*
variable "typeofinstance" {
  type = list(string)  
  default =   ["t2.micro", "t3.small"]
}
resource "aws_instance" "kekem44" {
    for_each = toset(var.typeofinstance)
    ami = "ami-045269a1f5c90a6a0"
    instance_type = each.key
  
}
// for each 
variable "info" {
    type = map(object({
        ami = string
        instance = string
    }))
    default = {  
    dev ={ami: "ami-045269a1f5c90a6a0", instance: "t2.micro"}
    qa = {ami: "ami-045269a1f5c90a6ahjghdfc", instance: "t2.micro"}
}
}
resource "aws_instance" "s2" {
  for_each = var.info 
  ami = each.value.ami
  instance_type = each.value.instance
  tags = {
    Name = each.key
  }
}
*/
/*
// 
provider "aws" {
    region = var.region
  
}

variable "region" {
    description = "value of region"
    type = string
    sensitive = true
   # default = "us-east-1"
  
}
*/
/*
// alias
provider "aws" {
    region = "us-east-1"
    alias = "us1"
  
}
provider "aws" {
    region = "us-west-1"
    alias = "usw1"
  
}
resource "aws-instance" "server1" {
    ami = "ami-045269a1f5c90a6a0"
    provider = aws.us1
    instance_type = "t2.micro"
  
}
*/
# lifecycle
provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "bertin1" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    lifecycle {
    //  create_before_destroy = true
      prevent_destroy = false
    }
  
}