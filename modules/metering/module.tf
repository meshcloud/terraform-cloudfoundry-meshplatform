resource "random_password" "metering" {
  length           = 32
  special          = true
  override_special = "!@#$=+"
}

resource "cloudfoundry_user" "metering" {
  name     = var.metering_username
  password = var.metering_password == "thisvalueisnotactuallyused" ? random_password.metering.result : var.metering_password

  groups = [
    "cloud_controller.admin",
  ]
}
