output "instance_ip" {
  value       = aws_instance.ec2-jenkins.public_ip
  description = "EC2 IP"
}
