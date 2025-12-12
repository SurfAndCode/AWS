terraform {
  backend "s3" {
    bucket         = "mario12bucket4eks"  # Ensure this is your actual S3 bucket
    key            = "eks/terraform.tfstate"  # Standardized directory naming
    region         = "ap-southeast-2"
    encrypt        = true  # Ensures state file is encrypted
    use_lockfile = true  # Enables state locking to prevent conflicts
  }
}
