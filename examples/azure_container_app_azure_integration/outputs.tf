output "container_app_latest_fqdn" {
  value = module.ocean_integration.container_app_latest_fqdn
}

output "container_app_outbound_ip_addresses" {
  value = module.ocean_integration.container_app_outbound_ip_addresses
}

output "container_latest_revision_name" {
  value = module.ocean_integration.container_latest_revision_name
}

output "resource_group_name" {
  value = module.ocean_integration.resource_group_name
}

output "location" {
  value = var.location
}

output "integration" {
  value = module.ocean_integration.integration
}

output "subscription_event_grid_topic_name" {
  value = var.event_grid_system_topic_name != "" ? var.event_grid_system_topic_name : azurerm_eventgrid_system_topic.subscription_event_grid_topic[0].name
}

output "subscription_event_grid_topic_subscriptions" {
  value = [
    for subscription in azurerm_eventgrid_system_topic_event_subscription.subscription_event_grid_topic_subscription : subscription.name
  ]
}
