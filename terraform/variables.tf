variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "Availability zones to use for public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ecs_cluster_name" {
  description = "Name for the ECS Cluster"
  type        = string
  default     = "flask-ecs-cluster"
}

variable "ecr_repository_name" {
  description = "Name for the ECR Repository"
  type        = string
  default     = "flask-python-app"
}

variable "task_family" {
  description = "Family name for the ECS Task Definition"
  type        = string
  default     = "flask-task"
}

variable "execution_role_arn" {
  description = "ARN for the ECS task execution role"
  type        = string
  # Replace with your ECS Task Execution Role ARN that has the required policies
  default     = "arn:aws:iam::390402566312:role/ecsTaskExecutionRole"
}

variable "ecs_service_name" {
  description = "Name for the ECS Service"
  type        = string
  default     = "flask-ecs-service"
}

