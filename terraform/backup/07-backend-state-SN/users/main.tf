
# variable "application_name" {
#   default = "07-backend-state"
  
# }

# variable "project_name" {
#   default = "users"
  
# }

# variable "environment" {
#   default = "dev"
  
# }

terraform {
  backend "s3" {
    bucket = "dev-applications-name-backend-state-in28minutes-snjiraini"
    # key = "07-backend-state-users-dev"//"${var.application_name}-${var.project_name}-${var.environment}" //app-env-project
    key = "07-backend-state/users/backend-state"
    region = "us-east-2"
    dynamodb_table = "dev_application_locks"
    encrypt = true
    
  }
}

provider "aws" {
  region = "us-east-2"
}



resource "aws_iam_user" "my_iam_user" {
  name = "${terraform.workspace}_my_iam_user_abc"
}

# STATE
# DESIRED  -  KNOWN  -  ACTUAL
