variable "users" {
  # type = list #any, number, bool, list, map, set, object, tuple
  # default = {
  #   tom:"US",
  #   jane:"Kenya",
  #   sam:"Uganda",
  #   sats:"Yemen"
  # }
  default = {
    tom : { country : "US", department : "ABC" },
    jane : { country : "Kenya", department : "DEF" },
    sam : { country : "Uganda", department : "GHI" },
    sats : { country : "Yemen", department : "JKL" }
  }

}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "my_iam_user" {

  for_each = var.users
  name     = each.key
  tags = {
    # country: each.value
    country : each.value.country
    department : each.value.department
  }
}
