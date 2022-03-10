output "result" {
    description  = "output for random password generation"
    value = "Hi ${var.username} , your password is ${random_password.password.result}"
}

