output "metering_password" {
  sensitive = true
  value     = random_password.metering.result
}
