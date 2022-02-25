terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0" #Forcing which version of plugin needs to be used.

    }
  }
}
provider "random" {

}



resource "random_string" "random" {
  length           = 20
  special          = true
  override_special = "@"
}
resource "random_password" "password" {
  keepers = {
      password_id = "akhil"
  } 
  length           = 8
  special          = true
  override_special = "@"
  min_upper        = "1"
  min_lower        = "1"
}

variable "length" {
  default = "29"

}


