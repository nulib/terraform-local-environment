module "environment" {
  source = "git::https://github.com/nulib/terraform-local-environment.git?ref=master"
  vars   = "HOME, USER"
}

output "home_directory" {
  value = "${module.environment.result["HOME"]}"
}

output "current_user" {
  value = "${module.environment.result["USER"]}"  
}
