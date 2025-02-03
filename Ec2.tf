provider "aws" {
  # Configuration options
  region    = "us-east-1"
  
}

resource "aws_instance" "web" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = lookup(var.types, terraform.workspace, "t2.micro")
  key_name = "devops-falama"
  subnet_id = "subnet-022f3c5003ae99f33"
  
}

variable "types" {
  type = map
   default =   {
    default = "t2.micro"
    dev = "t2.large"
    prod = "t2.xlarge"
   }
}
