resource "aws_instance" "web"{
    ami           = "ami-084568db4383264d4"
    instance_type = "t2.micro"
    key_name      = "jenkins"
    subnet_id     = "subnet-064a27597a4e295e9"
    tags = {
        Name = "My EC2 Instance"
    }
}