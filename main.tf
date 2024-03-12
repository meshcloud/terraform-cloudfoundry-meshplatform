module "replicator" {
  source = "./modules/replicator"

  replicator_username = var.replicator_username
  replicator_password = var.replicator_password
}

module "metering" {
  source = "./modules/metering"

  metering_username = var.metering_username
  metering_password = var.metering_password
}
