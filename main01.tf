resource "aws_vpc" "my_vpc_tf" {
    cidr_block = "192.168.0.0/20"
    tags = {
    Name = "tf vpc"
  }
  
}
resource "aws_subnet" "my_subnet1" {
vpc_id = aws_vpc.my_vpc_tf.id
cidr_block = "192.168.0.0/24"
tags = {
  "Name" = "mytfvpcsubnet"
}
  
}