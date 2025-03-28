provider "aws" {
  region = "us-east-1"  # Change the region as needed
}

resource "aws_s3_bucket" "jenkins_s3_bucket" {
  bucket = "my-unique-jenkins-s3-bucket"  # Change to a globally unique bucket name

  tags = {
    Name        = "Jenkins S3 Bucket"
  }
}