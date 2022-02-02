resource "aws_instance" "ec2_example" {

   ami           = "ami-03fa4afc89e4a8a09"
   instance_type =  var.instance_type

   tags = {
           Name = var.enviorment_name
   }
} 