provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAXXFEOCX4DOK52HEE"
  secret_key = "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"
}

module testvpc {
  source          = "./modules/vpc"
  vpc_cidr        = "192.168.0.0/16"
  public_subnet1  = "192.168.1.0/24"
  public_subnet2  = "192.168.2.0/24"
  public_cidr1    = "us-west-1a"
  public_cidr2    = "us-west-1b"

}
