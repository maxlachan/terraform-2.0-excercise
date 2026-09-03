data "aws_ssm_parameter" "example" {
    name = dyanamodb
  
}



resource "aws_instance" "web1"{
    ami = var.ami1
    instance_type = var.instance_type1

    tags = {
      Name = data.aws_ssm_parameter.example.value
      Environment = var.environment
    }

}

module "webserver2" {
    source = "./modules/ec2"
    ami = var.ami
    instance_type = var.instance_type
}
  

  
