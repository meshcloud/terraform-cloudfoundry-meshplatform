variable "metering_username" {
  type        = string
  default     = "meshcloud-metering"
  description = "Username of the service user used in Metering Configuration in meshStack."
}

variable "metering_password" {
  sensitive   = true
  type        = string
  default     = "thisvalueisnotactuallyused"
  description = "Password of the metering service user. A random password is generated if omitted."
}
