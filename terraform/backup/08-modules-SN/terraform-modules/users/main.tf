variable "environment" {
    default = "default"
  
}

provider "aws" {
    region = "us-east-2"
}


resource "aws_iam_user" "my_iam_user" {
    # name = "my_iam_user_snjiraini_${var.environment}"
    name = "${local.iam_user_extension}_${var.environment}"
}

locals {
  iam_user_extension = "my_iam_user_snjirainiLocals"
}
# STATE
# DESIRED  -  KNOWN  -  ACTUAL
