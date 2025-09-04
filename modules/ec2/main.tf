# EC2 instance
resource "aws_instance" "terraform-demo" {
  ami               = var.image_id
  security_groups   = [var.sgroup]
  subnet_id         = var.sub
  instance_type     = var.instance_type
  key_name          = var.key_name

  root_block_device {
    volume_type           = "gp3"
    delete_on_termination = true
  }

  # Tags
  tags = {
    Application  = "${upper(var.application)}"
    Environment  = "${upper(var.environment)}"
    Name         = "${upper(var.demohostname)}"
    IC_PLATFORM  = "${upper(var.platform)}"
    TechnicalPOC = "teegobezie@gmail.com"
  }

  # User Data
  user_data = <<-EOF
  #!/bin/bash
  hostnamectl set-hostname "${var.demohostname}"
  EOF
}

