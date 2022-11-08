# https://developer.hashicorp.com/terraform/language/settings/backends/local
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
