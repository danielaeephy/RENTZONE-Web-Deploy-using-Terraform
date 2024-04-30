# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "nestapp-terraform-state-pocket"
    key            = "nestapp-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "Admin"
    dynamodb_table = "terraform-state-lock"
  }
}