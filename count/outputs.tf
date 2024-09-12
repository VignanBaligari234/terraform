output "private_ips" {
 value = aws_instance.my_instance[*].private_ip 
}