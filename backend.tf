terraform {
  backend "s3" {
    bucket = "dev-env-501148066163-tfstates"
    key    = "sprint1/devenv/terraformrestart/ec2/ec2-terraform.tfstates"
  }
}
