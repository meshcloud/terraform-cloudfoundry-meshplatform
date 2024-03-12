output "replicator_password" {
  sensitive = true
  value     = module.replicator.replicator_password
}

output "metering_password" {
  sensitive = true
  value     = module.metering.metering_password
}
