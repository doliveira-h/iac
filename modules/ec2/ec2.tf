resource "aws_instance" "ec2" {
  ami = data.aws_ami.ubuntu.id 
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [module.sg_ssh.sg_id]
  tags = { 
    Name = var.instance_name
  }
}

module "sg_ssh" {
  source = "../sg"
  ports_allowed = var.ports_allowed
  sg_name = var.instance_name
}