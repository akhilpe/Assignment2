


resource "random_password" "password" {
  length           = 8
  special          = true
  override_special = "!#$%&*()"
  min_lower        = 1
  min_upper        = 1
  min_special      = 1

}


resource "null_resource" "pasres" {
  provisioner "local-exec" {
    command = <<EOH
        echo "Hi ${var.username} , your password is ${random_password.password.result}" >> final.txt
        cat final.txt
     EOH

    #interpreter = ["/bin/bash", "-c"]
    #working_dir = "./final.txt"
  }
}
variable "username" {
  type = string
}

