# terraform-local-environment

Terraform module to read local shell environment variables.

## Prerequisites

* Ruby >= 2.2
* `json` ruby gem

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "environment" {
  source = "git::https://github.com/nulib/terraform-local-environment.git?ref=master"
  vars   = "HOME,USER"
}
```

## Input

|  Name              |    Default     |                          Description                             |
|:-------------------|:--------------:|:-----------------------------------------------------------------|
| vars               | `""`           | A comma delimited list of the variables to read (blank for all)  |


## Output

| Name             |        Description                                               |
|:-----------------|:-----------------------------------------------------------------|
| result           | A map containing the names and values of the requested variables |

## Example

```hcl
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
```
