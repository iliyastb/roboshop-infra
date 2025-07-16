resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value

  overwrite = true
}

variable "parameters" {}

resource "aws_ssm_parameter" "secrets" {
  count = length(var.secrets)
  name  = var.secrets[count.index].name
  type  = var.secrets[count.index].type
  value = var.secrets[count.index].value

  overwrite = true
}

variable "secrets" {}

resource "aws_ssm_parameter" "jenkins_user" {
  name  = "jenkins.user"
  type  = "String"
  value = "admin"

  overwrite = true
}

resource "aws_ssm_parameter" "jenkins_pass" {
  name  = "jenkins.pass"
  type  = "SecureString"
  value = "admin"

  overwrite = true
}