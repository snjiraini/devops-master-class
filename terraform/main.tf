provider "aws" {
    region = "us-east-2"
    version = "~> 2.46"
}


resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-in28minutes-snjiraini-20221220"
}