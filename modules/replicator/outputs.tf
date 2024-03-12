output "replicator_username" {
  value = var.replicator_username
}

output "replicator_password" {
  sensitive = true
  value     = random_password.replicator.result
}
