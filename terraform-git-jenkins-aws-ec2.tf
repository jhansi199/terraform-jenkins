provider "aws"{
  region="us-east-1"
}
resource "aws_instance" "web"{
    count = "1"
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    key_name = "test_kp"
    tags = {
    Name = "terraformec2"
}
}
