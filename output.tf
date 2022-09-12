output "ip"{
    value = aws_instance.private-instance.*.private_ip
}