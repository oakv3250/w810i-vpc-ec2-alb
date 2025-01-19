terraform {
  backend "s3" {
    bucket  = "vakosei-10"
    key     = "w801/terraform.tfstate"
    region  = "us-east-1"
    encrypt = "false"
    //namodb_table = "state-log"
  }
}
