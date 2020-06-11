terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "everiscoe"

    workspaces {
      name = "test-workspace-github"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "tfe-test-generated"
  location = "West Europe"
}

output "hello_world" {
  value = "Hello, World! ${var.your_name} kudos tou you!!!"
}