<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | 0.53.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | 0.53.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudfoundry_user.metering](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/0.53.1/docs/resources/user) | resource |
| [random_password.metering](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metering_password"></a> [metering\_password](#input\_metering\_password) | Password of the metering service user. A random password is generated if omitted. | `string` | `"thisvalueisnotactuallyused"` | no |
| <a name="input_metering_username"></a> [metering\_username](#input\_metering\_username) | Username of the service user used in Metering Configuration in meshStack. | `string` | `"meshcloud-metering"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metering_password"></a> [metering\_password](#output\_metering\_password) | n/a |
| <a name="output_metering_username"></a> [metering\_username](#output\_metering\_username) | n/a |
<!-- END_TF_DOCS -->