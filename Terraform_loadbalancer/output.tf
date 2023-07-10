output "instance_public_ip" {
  value = [ aws_instance.test-instance-1.public_ip, aws_instance.test-instance-2.public_ip, aws_instance.test-instance-3.public_ip ]
}

output "instance_id" {
  value = [ aws_instance.test-instance-1.id, aws_instance.test-instance-2.id, aws_instance.test-instance-3.id ]
}

output "subnet_id" {
  value = [ aws_instance.test-instance-1.id, aws_instance.test-instance-2.id, aws_instance.test-instance-3.id ]
}
