output "vpc_id" {
    description = "Instance VPC Id"
    value = module.vpc.vpc_id
}

output "subnet_id" {
    description = "Instance Subnet Id"
    value = module.vpc.demo-subnet
}

output "security_group" {
    description = "Instance Security Group"
    value = module.vpc.demo-sg
}

output "public_ip" {
    description = "Instance Public IP"
    value = module.ec2.ip
}

output "hostname" {
  description = "Instance HostName"
  value = module.ec2.hostname
}

