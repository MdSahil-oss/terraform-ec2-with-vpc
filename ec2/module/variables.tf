variable "vpc_id" {
  description = "VPC ID in which ec2 instance has to be created"
}

variable "instance_type" {
  description = "Type of ec2 instance that has to be created"
  default     = " t2.small"
}

variable "ami_id" {
  description = "AMI ID with which instance has to be intialized"
  default     = ""
}

variable "key_pair" {
  description = "Name of the key-pair by which instance can be accessed"
}

variable "instance_name" {
  description = "Name of the the instance"
  default     = "HelloWorld"
}
