module "instance-for-region1" {
  providers = {
    aws = aws.region1
  }

  source        = "./module"
  vpc_id        = data.aws_vpc.region1.id
  key_pair      = "admin"
  instance_type = "t2.micro"
}

module "instance-for-region2" {
  providers = {
    aws = aws.region2
  }

  source        = "./module"
  vpc_id        = data.aws_vpc.region2.id
  key_pair      = "admin"
  instance_type = "t2.micro"
}
