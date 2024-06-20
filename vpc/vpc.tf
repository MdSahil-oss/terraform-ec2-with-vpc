module "vpc-region1" {
  # depends_on = [data.aws_availability_zones.region_azs]
  providers = {
    aws = aws.region1
  }

  source = "terraform-aws-modules/vpc/aws"

  name = "accunox-task-vpc"
  cidr = "10.0.0.0/16"

  azs = var.azs_for_us-east-1

  private_subnets = [for index in range(length(var.azs_for_us-east-1)) : format("10.0.%d.0/24", index)]
  public_subnets  = [for index in range(length(var.azs_for_us-east-1)) : format("10.0.%d.0/24", 100 + index)]

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

  azs = var.azs_for_us-east-2

  private_subnets = [for index in range(length(var.azs_for_us-east-2)) : format("10.0.%d.0/24", index)]
  public_subnets  = [for index in range(length(var.azs_for_us-east-2)) : format("10.0.%d.0/24", 100 + index)]

  enable_nat_gateway      = true
  enable_vpn_gateway      = true
  map_public_ip_on_launch = true

  # Set to true only for production usage.
  one_nat_gateway_per_az = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "accunox-task-vpc"
    Region      = "us-east-2"
  }
}
