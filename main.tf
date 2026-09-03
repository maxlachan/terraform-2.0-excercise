data "aws_secretsmanager_secret" "example" {
    name = "abhishek"
  
}

data "aws_secretsmanager_secret_version" "example" {
    secret_id = data.aws_secretsmanager_secret.example.id

  
}

locals {
  example1 = jsondecode(
    data.aws_secretsmanager_secret_version.example.secret_string
    )
    }


resource "aws_instance" "web1"{
    ami = var.ami1
    instance_type = var.instance_type1

    tags = {
      Name = local.example1.veeramala
      Environment = var.environment
    }

}

module "webserver2" {
    source = "./modules/ec2"
    ami = var.ami
    instance_type = var.instance_type
}

  
