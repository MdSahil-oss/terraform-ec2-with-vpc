module "vpc-region1" {
  # depends_on = [data.aws_availability_zones.region_azs]
  providers = {
    aws = aws.region1
  }

  source = "terraform-aws-modules/vpc/aws"

  name = "accunox-task-vpc"
  cidr = "10.0.0.0/16"

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway      = true
  enable_vpn_gateway      = true
  map_public_ip_on_launch = true

  # Set to true only for production usage.
  one_nat_gateway_per_az = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "accunox-task-vpc"
    Region      = "us-east-1"
  }
}

module "vpc--region2" {
  # depends_on = [data.aws_availability_zones.region_azs]
  providers = {
    aws = aws.region2
  }

  source = "terraform-aws-modules/vpc/aws"

  name = "accunox-task-vpc"
  cidr = "10.0.0.0/16"

  azs = ["us-east-2a", "us-east-2b", "us-east-2c"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  # Set to true only for production usage.
  one_nat_gateway_per_az = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "accunox-task-vpc"
    Region      = "us-east-2"
  }
}
