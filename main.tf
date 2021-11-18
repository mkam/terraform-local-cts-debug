terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}

resource "local_file" "services_var" {
  for_each = var.services
  content = jsonencode(each.value)
  filename = "services_variable_${each.key}.txt"
}
