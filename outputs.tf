output "this_role_name" {
  description = "Name of the ram role"
  value       = local.this_role_name
}

output "this_role_trusted_users" {
  description = "RAM users who can play this role"
  value       = concat(alicloud_ram_role.this.*.arn, [""])[0]
}

output "this_role_trusted_services" {
  description = "AliCloud services who can play this role"
  value       = concat(alicloud_ram_role.this.*.services, [""])[0]
}