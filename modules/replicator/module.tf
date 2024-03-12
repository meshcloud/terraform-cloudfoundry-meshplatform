resource "random_password" "replicator" {
  length           = 32
  special          = true
  override_special = "!@#$=+"
}

resource "cloudfoundry_user" "replicator" {
  name     = var.replicator_username
  password = var.replicator_password == "thisvalueisnotactuallyused" ? random_password.replicator.result : var.replicator_password

  groups = [
    "cloud_controller.admin",
    "uaa.admin",
    "scim.read",
  ]
}
