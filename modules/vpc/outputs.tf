output "vpc_id" {
    value = aws_vpc.main_vpc.id
}

output "demo-subnet" {
    value = aws_subnet.public_subnet_a.id
}

output "demo-sg" {
    value = aws_security_group.demo-sg.id
}