variable "key_name" {
  type = string
  default = "terraform"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "instance_name" {
  type = string
  default = "ec2"
}

variable "ports_allowed" {
  description = "Allowed Ec2 ports"
  default     = {
    "22"  = ["0.0.0.0/0"]
  }    
}