provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "type"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.large"
  }
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = var.ami
  instance_type_value = lookup(var.instance_type, terraform.workspace, "t2.micro")
  subnet_id_value = "subnet-0f3d24196e87906a6"
}