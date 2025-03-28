provider "aws" {
  region = "us-east-1"
  alias  = "s3"
}

resource "aws_s3_bucket" "jenkins_s3_bucket" {
  bucket = "my-unique-jenkins-s3-bucket"  # Change to a globally unique bucket name

  tags = {
    Name        = "jenkins S3 Bucket"
  }
}