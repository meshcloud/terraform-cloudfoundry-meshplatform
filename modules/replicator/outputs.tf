output "replicator_password" {
  sensitive = true
  value     = random_password.replicator.result
}
