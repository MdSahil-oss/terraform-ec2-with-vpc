variable "azs_for_us-east-1" {
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "Specify amazon zones for VPC to be created in us-east-1 region"
  type        = list(string)
}

variable "azs_for_us-east-2" {
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
  description = "Specify amazon zones for VPC to be created in us-east-2 region"
  type        = list(string)
}
