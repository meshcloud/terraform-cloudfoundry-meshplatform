variable "replicator_username" {
  type        = string
  default     = "meshcloud-replicator"
  description = "Username of the service user used in Replication Configuration in meshStack."
}

variable "replicator_password" {
  sensitive   = true
  type        = string
  default     = "thisvalueisnotactuallyused"
  description = "Password of the replicator service user. A random password is generated if omitted."
}
