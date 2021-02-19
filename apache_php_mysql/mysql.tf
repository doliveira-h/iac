module "mysql" {
  source = "../tf_modules/ec2"
  instance_name = "mysql"
  ports_allowed = {
    "22"  = ["0.0.0.0/0"]
    "3306" = ["0.0.0.0/0"]
  }
}