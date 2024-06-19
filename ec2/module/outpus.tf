output "instance_type" {
  value       = aws_instance.ubuntu.instance_type
  description = "Instance Type"
}

output "instance_id" {
  value       = aws_instance.ubuntu.id
  description = "Instance ID"
}

output "public_ip" {
  value       = aws_instance.ubuntu.public_ip
  description = "Public IP"
}

output "public_dns" {
  value       = aws_instance.ubuntu.public_dns
  description = "Public DNS"
}

# output "example" {
#   value       = data.aws_availability_zones.region_azs.names
#   description = "Availability Zones"
# }
