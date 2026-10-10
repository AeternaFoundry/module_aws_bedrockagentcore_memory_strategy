output "bedrockagentcore_memory_strategies_configuration" {
  description = "Map of configuration values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "bedrockagentcore_memory_strategies_description" {
  description = "Map of description values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_memory_strategies_memory_execution_role_arn" {
  description = "Map of memory_execution_role_arn values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.memory_execution_role_arn if v.memory_execution_role_arn != null && length(v.memory_execution_role_arn) > 0 }
}
output "bedrockagentcore_memory_strategies_memory_id" {
  description = "Map of memory_id values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.memory_id if v.memory_id != null && length(v.memory_id) > 0 }
}
output "bedrockagentcore_memory_strategies_memory_strategy_id" {
  description = "Map of memory_strategy_id values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.memory_strategy_id if v.memory_strategy_id != null && length(v.memory_strategy_id) > 0 }
}
output "bedrockagentcore_memory_strategies_name" {
  description = "Map of name values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagentcore_memory_strategies_namespace_templates" {
  description = "Map of namespace_templates values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.namespace_templates if v.namespace_templates != null && length(v.namespace_templates) > 0 }
}
output "bedrockagentcore_memory_strategies_namespaces" {
  description = "Map of namespaces values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.namespaces if v.namespaces != null && length(v.namespaces) > 0 }
}
output "bedrockagentcore_memory_strategies_reflection_configuration" {
  description = "Map of reflection_configuration values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.reflection_configuration if v.reflection_configuration != null && length(v.reflection_configuration) > 0 }
}
output "bedrockagentcore_memory_strategies_region" {
  description = "Map of region values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_memory_strategies_type" {
  description = "Map of type values across all bedrockagentcore_memory_strategies, keyed the same as var.bedrockagentcore_memory_strategies"
  value       = { for k, v in aws_bedrockagentcore_memory_strategy.bedrockagentcore_memory_strategies : k => v.type if v.type != null && length(v.type) > 0 }
}

