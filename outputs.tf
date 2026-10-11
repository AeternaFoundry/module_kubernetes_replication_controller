output "replication_controllers_id" {
  description = "Map of id values across all replication_controllers, keyed the same as var.replication_controllers except keys with no id are omitted"
  value       = { for k, v in kubernetes_replication_controller.replication_controllers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "replication_controllers_metadata" {
  description = "Map of metadata values across all replication_controllers, keyed the same as var.replication_controllers except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_replication_controller.replication_controllers : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "replication_controllers_spec" {
  description = "Map of spec values across all replication_controllers, keyed the same as var.replication_controllers except keys with no spec are omitted"
  value       = { for k, v in kubernetes_replication_controller.replication_controllers : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

