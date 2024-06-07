variable "names"{
  type = list #any, number, bool, list, map, set, object, tuple
  default = ["sam","sats","ranga","tom","jane"]
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "my_iam_user" {
  # count = length(var.names)
  # name  = "my_iam_newuser_${count.index}"
  # name = "${var.iam_user_name_prefix}_${count.index}"
  # name = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}
