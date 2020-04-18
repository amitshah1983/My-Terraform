provider "aws" {
  access_key = "AKIAU2JENLMZGF62LP57"
  secret_key = "t5QNDOCDsxPNQeSMn59LwZHG+lT/vIHOngVj0MGy"
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami= "ami-07ebfd5b3428b6f4d"
  instance_type= "t2.nano" 
}
