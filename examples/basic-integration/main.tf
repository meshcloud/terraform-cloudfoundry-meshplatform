
# It is highly recommended to setup a backend to store the terraform state file
# Removing the backend will output the terraform state in the local filesystem
# See https://www.terraform.io/language/settings/backends for more details
#
# Remove/comment the backend block below if you are only testing the module.
# Please be aware that you cannot destroy the created resources via terraform if you lose the state file.

terraform {
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.53.1"
    }
  }
  backend "gcs" {
    prefix = "meshplatforms/gcp"
    bucket = "my-terraform-states"
  }
}

provider "cloudfoundry" {
  api_url             = "https://api.<cf-domain>" # Your Cloud Foundry API Url
  user                = "admin"
  password            = "..." # cf admin password
  uaa_client_id       = "admin"
  uaa_client_secret   = "..." # uaa admin client secret
  skip_ssl_validation = true
  app_logs_max        = 30
}

module "meshplatform" {
  source = "../../"
  # note: for production use we recommend using a pinned version of the module like so
  # source = "git::https://github.com/meshcloud/terraform-cloudfoundry-meshplatform.git?ref=<commit-id>"
}
