provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami= "ami-07ebfd5b3428b6f4d"
  instance_type= "t2.nano" 
}
