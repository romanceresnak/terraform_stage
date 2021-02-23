output "asg_name" {
  value       = aws_auto_scaling_group.example.name
  sensitive   = true
  description = "The name of the Auto Scaling Group"
  depends_on  = []
}

output "instance_security_group_id" {
  value       = aws_security_group.instance.id
  sensitive   = true
  description = "The ID of the EC2 Instance Security Group"
  depends_on  = []
}

