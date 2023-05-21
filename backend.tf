# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "olisa-terraform-remote-state"
    key            = "linage-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform-state-lock"
  }
}