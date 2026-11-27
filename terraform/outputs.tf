output "alb_dns_name" {
  description = "CNAME para dominio"
  value       = aws_lb.main.dns_name
}

output "url_alb" {
  value = "http://${aws_lb.main.dns_name}"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "ecs_cluster" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service" {
  value = aws_ecs_service.app.name
}

output "pipeline_name" {
  value = aws_codepipeline.app.name
}

output "codeconnection_arn" {
  description = ""
  value       = local.connection_arn
}
