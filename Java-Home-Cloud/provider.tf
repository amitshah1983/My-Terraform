provider "aws" {
  region = "${var.region}"
  access_key = "AKIAU2JENLMZGF62LP57"
  secret_key = "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"
}
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "java-home-cloud-vpc"
    Location = "Noida"
  }
}
resource "aws_subnet" "jhc-subnets" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  vpc_id = "${aws_vpc.main.id}"
  availability_zone = "${element(data.aws_availability_zones.azs.names, count.index)}"
  cidr_block = "${element(var.vpc_subnet, count.index)}"
  
  tags = {
    Name = "jhc-subnet-${count.index+1}"
  }

}
