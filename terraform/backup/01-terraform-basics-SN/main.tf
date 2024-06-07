provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-in28minutes-snjiraini-20230224"
    versioning {
        enabled = true
    }

}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_user1updated"
}

# STATE
# DESIRED  -  KNOWN  -  ACTUAL
