output "secret_id" {
  description = "The ID of the secret"
  value       = try(aws_secretsmanager_secret.this[0].id, null)
}
