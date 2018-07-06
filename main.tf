terraform {
  required_version = ">= 0.11.7"
}

variable "vars" {
  type    = "string"
  default = ""
}

data "external" "environment" {
  program = ["${path.module}/support/json_environ.rb"]
  query   = {
    vars = "${var.vars}"
  }
}

output "result" {
  value = "${data.external.environment.result}"
}
