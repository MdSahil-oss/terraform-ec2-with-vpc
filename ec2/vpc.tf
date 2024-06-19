data "aws_vpc" "region1" {
  provider = aws.region1

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "accunox-task-vpc"
    Region      = "us-east-1"
  }
}

data "aws_vpc" "region2" {
  provider = aws.region2

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "accunox-task-vpc"
    Region      = "us-east-2"
  }
}
