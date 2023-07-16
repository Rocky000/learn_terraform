output "instance_public_ip" {
  value = aws_instance.test-instance.public_ip
}

output "instance_id" {
  value = aws_instance.test-instance.id
} 

output "security_group" {
  value = aws_security_group.allow_tls
}

# output "subnet_id" {
#   value = [ aws_instance.test-instance-1.id, aws_instance.test-instance-2.id, aws_instance.test-instance-3.id ]
# }
