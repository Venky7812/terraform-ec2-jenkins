resource "aws_instance" {
    ami           = "ami-084568db4383264d4"
    instance_type = "t2.micro"
    key_pair      = "jenkins"
    tags {
        Name = "My EC2 Instance"
    }
}