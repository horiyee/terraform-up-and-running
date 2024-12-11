terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-hands-on"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-up-and-running-locks-hands-on"
    encrypt = true
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  skip_final_snapshot = true
  db_name = example_database

  username = var.db_username
  password = var.db_password
}
