provider "aws" {
    region = "us-west-1"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

resource "aws_s3_bucket" "ce-bucket-tf" {
  bucket = "${var.bucket_name}" 
  versioning {
      enabled = true
   }
  tags = {
    Name        = "My tf bucket"
  }
}
