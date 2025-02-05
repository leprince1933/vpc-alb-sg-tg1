# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "web" {
  ami                                  = "ami-0c614dee691cbbf37"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  key_name                             = "db-connect-key"
  monitoring                           = false
 # security_groups                      = ["launch-wizard-6"]
  subnet_id                            = "subnet-061bd92e4675ec383"
  vpc_security_group_ids      = ["sg-095f681c3fa59bb98"]
  tags = {
    Name = "Terraform-server33"
  }
}

/*resource "aws_instance" "web" {
  ami                                  = "ami-0c614dee691cbbf37"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  key_name                             = "windows_server1"
  monitoring                           = false
  subnet_id                            = "subnet-5594bd74"
  vpc_security_group_ids      = ["sg-0fd6d2904e789d078"]
  tags = {
    Name = "Terraform-server"
  } 
}
*/