provider "aws" {
  region = "us-east-1"
  alias  = "s3"
}

resource "aws_s3_bucket" "jenkins_s3_bucket" {
  bucket = "my-unique-jenkins-s3-bucket" 

  tags = {
    Name        = "jenkins S3 Bucket"
  }

}
resource "aws_s3_bucket" "jenkins_s3_bucket" {
  bucket = "my-unique-jenkins-s3-bucket"
}

resource "aws_s3_bucket" "upload_file" {
  bucket = aws_s3_bucket.my-unique-jenkins-s3-bucket.id
  key    = "myfile.txt"  
  source = "myfile.txt"  
  acl    = "private"
}
