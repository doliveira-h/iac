resource "aws_security_group" "sg_ec2" {
  name = "${var.sg_name}-sg"
  dynamic ingress {
    for_each = var.ports_allowed
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      cidr_blocks = ingress.value
      protocol    = "tcp"
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow outbound"
  } 
}