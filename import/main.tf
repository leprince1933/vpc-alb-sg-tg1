provider "aws" {
    region = "us-east-1"
  
}
import {
  to = aws_instance.web
  id = "i-02180bbdabf1e1d92"
}

