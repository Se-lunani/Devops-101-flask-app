output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "ecs_cluster_id" {
  description = "The ID of the ECS Cluster"
  value       = aws_ecs_cluster.cluster.id
}

output "ecr_repository_url" {
  description = "The URL of the ECR Repository"
  value       = aws_ecr_repository.repo.repository_url
}

output "ecs_service_name" {
  description = "The name of the ECS Service"
  value       = aws_ecs_service.service.name
}

