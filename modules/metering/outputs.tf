output "metering_username" {
  value = var.metering_username
}

output "metering_password" {
  sensitive = true
  value     = random_password.metering.result
}
