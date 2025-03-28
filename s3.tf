# 1️⃣ Create an S3 bucket
resource "aws_s3_bucket" "jenkins_s3_bucket" {
  bucket = "my-unique-jenkins-s3-bucket"  # Change to a globally unique name
  acl    = "private"
}

# 2️⃣ Upload a file to the S3 bucket
resource "aws_s3_object" "upload_file" {
  bucket = aws_s3_bucket.jenkins_s3_bucket.id  # Reference the S3 bucket
  key    = "myfile.txt"  # Name of the file in S3
  source = "myfile.txt"  # Local file to upload
  acl    = "private"     # Adjust ACL as needed
}

resource "aws_s3_bucket_acl" "jenkins_s3_acl" {
  bucket = aws_s3_bucket.jenkins_s3_bucket.id
  acl    = "private"
}
