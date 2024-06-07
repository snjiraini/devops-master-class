variable "iam_user_name_prefix"{
  type = string #any, number, bool, list, map, set, object, tuple
  default = "my_iam_newuser"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "my_iam_user" {
  count = 3
  # name  = "my_iam_newuser_${count.index}"
  name = "${var.iam_user_name_prefix}_${count.index}"
}
