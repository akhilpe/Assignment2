resource "random_password" "password" {
  length           = 8
  special          = true
  override_special = "@"
  min_lower        = 1
  min_upper        = 1
  min_special      = 1

}

variable "username" {
  type = string
}
