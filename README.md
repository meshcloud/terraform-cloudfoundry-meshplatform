# Cloud Foundry meshPlatform Module

Terraform module to integrate Cloud Foundry as a meshPlatform into meshStack instance. With this module, cloud foundry users used by meshStack are created with the required permissions. The output of this module is a set of credentials that need to be configured in meshStack as described in [meshcloud public docs](https://docs.meshcloud.io/docs/meshstack.how-to.integrate-meshplatform.html).

## Prerequisites

To run this module, you need to use cloud foundry admin user and UAA admin client.

You can create an admin user with [UAA CLI](https://docs.cloudfoundry.org/uaa/uaa-user-management.html#creating-admin-users).

## Example Usages

Check [examples](./examples/) for different use cases. As a quick start we recommend using [basic-integration](./examples/basic-integration) example.

## Contributing Guide

Before opening a Pull Request, we recommend following the below steps to get a faster approval:

1. Install [pre-commit](https://pre-commit.com/#install)

   We use pre-commit to perform several terraform related tasks such as `terraform validate`, `terraform fmt`, and generating terraform docs with `terraform_docs`

2. Execute `pre-commit install`: Hooks configured in `.pre-commit-config.yaml` will be executed automatically on commit. For manual execution, you can use `pre-commit run -a`.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | 0.53.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_metering"></a> [metering](#module\_metering) | ./modules/metering | n/a |
| <a name="module_replicator"></a> [replicator](#module\_replicator) | ./modules/replicator | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metering_password"></a> [metering\_password](#input\_metering\_password) | Password of the metering service user. A random password is generated if omitted. | `string` | `"thisvalueisnotactuallyused"` | no |
| <a name="input_metering_username"></a> [metering\_username](#input\_metering\_username) | Username of the service user used in Metering Configuration in meshStack. | `string` | `"meshcloud-metering"` | no |
| <a name="input_replicator_password"></a> [replicator\_password](#input\_replicator\_password) | Password of the replicator service user. A random password is generated if omitted. | `string` | `"thisvalueisnotactuallyused"` | no |
| <a name="input_replicator_username"></a> [replicator\_username](#input\_replicator\_username) | Username of the service user used in Replication Configuration in meshStack. | `string` | `"meshcloud-replicator"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metering_password"></a> [metering\_password](#output\_metering\_password) | n/a |
| <a name="output_replicator_password"></a> [replicator\_password](#output\_replicator\_password) | n/a |
<!-- END_TF_DOCS -->