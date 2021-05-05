locals {
  names = ["foo", "bar", "bazz"]
}

resource "null_resource" "example" {
  for_each = toset(local.names)
}

output "null_resources" {
  value = null_resource.example.*
}
