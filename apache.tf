module "apache" {
  source = "./modules/ec2"
  instance_name = "apache"
  ports_allowed = {
    "22"  = ["0.0.0.0/0"]
    "80" = ["0.0.0.0/0"]
  }
}