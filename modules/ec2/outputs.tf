# IP
output "ip" {
  description = "Public IP"
  value       = aws_instance.terraform-demo.public_ip
}

# Hostname
output "hostname" {
  description = "Instance HostName"
  value       = "${lower(aws_instance.terraform-demo.tags.Name)}"
}