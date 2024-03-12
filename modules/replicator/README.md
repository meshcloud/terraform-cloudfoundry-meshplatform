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
| [cloudfoundry_user.replicator](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/0.53.1/docs/resources/user) | resource |
| [random_password.replicator](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_replicator_password"></a> [replicator\_password](#input\_replicator\_password) | Password of the replicator service user. A random password is generated if omitted. | `string` | `"thisvalueisnotactuallyused"` | no |
| <a name="input_replicator_username"></a> [replicator\_username](#input\_replicator\_username) | Username of the service user used in Replication Configuration in meshStack. | `string` | `"meshcloud-replicator"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_replicator_password"></a> [replicator\_password](#output\_replicator\_password) | n/a |
<!-- END_TF_DOCS -->