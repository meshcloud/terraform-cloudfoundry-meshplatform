output "replicator_username" {
  value = module.replicator.replicator_username
}

output "replicator_password" {
  sensitive = true
  value     = module.replicator.replicator_password
}

output "metering_username" {
  value = var.metering_username
}

output "metering_password" {
  sensitive = true
  value     = module.metering.metering_password
}
