output "instanceid"{
    value = aws_instance.web1.id



}

output "publicip"{
    value = aws_instance.web1.associate_public_ip_address

}
  

  
