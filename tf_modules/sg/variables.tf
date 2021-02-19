variable "ports_allowed" {
  description = "Allowed Ec2 ports"
  type = map
  default     = {
    "22"  = ["0.0.0.0/0"]
  }    
}
variable "sg_name" {
  
}