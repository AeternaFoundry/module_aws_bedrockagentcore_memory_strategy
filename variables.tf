variable "bedrockagentcore_memory_strategies" {
  description = <<EOT
Map of bedrockagentcore_memory_strategies, attributes below
Required:
    - memory_id
    - name
    - type
Optional:
    - description
    - memory_execution_role_arn
    - namespace_templates
    - namespaces
    - region
    - configuration (block):
        - consolidation (optional, block):
            - append_to_prompt (required)
            - model_id (required)
        - extraction (optional, block):
            - append_to_prompt (required)
            - model_id (required)
        - reflection (optional, block):
            - append_to_prompt (required)
            - model_id (required)
            - namespace_templates (required)
        - self_managed_configuration (optional, block):
            - historical_context_window_size (optional)
            - invocation_configuration (optional, block):
                - payload_delivery_bucket_name (required)
                - topic_arn (required)
            - trigger_conditions (optional, block):
                - message_based_trigger (optional, block):
                    - message_count (required)
                - time_based_trigger (optional, block):
                    - idle_session_timeout (required)
                - token_based_trigger (optional, block):
                    - token_count (required)
        - type (required)
    - memory_record_schema (block):
        - metadata_schema (optional, block):
            - extraction_config (optional, block):
                - llm_extraction_config (optional, block):
                    - definition (required)
                    - llm_extraction_instruction (optional)
                    - validation (optional, block):
                        - number_validation (optional, block):
                            - max_value (optional)
                            - min_value (optional)
                        - string_list_validation (optional, block):
                            - allowed_values (optional)
                            - max_items (optional)
                        - string_validation (optional, block):
                            - allowed_values (required)
            - extraction_type (optional)
            - key (required)
            - type (optional)
    - reflection_configuration (block):
        - namespace_templates (required)
EOT

  type = map(object({
    memory_id                 = string
    name                      = string
    type                      = string
    description               = optional(string)
    memory_execution_role_arn = optional(string)
    namespace_templates       = optional(set(string))
    namespaces                = optional(set(string))
    region                    = optional(string)
    configuration = optional(list(object({
      consolidation = optional(list(object({
        append_to_prompt = string
        model_id         = string
      })))
      extraction = optional(list(object({
        append_to_prompt = string
        model_id         = string
      })))
      reflection = optional(list(object({
        append_to_prompt    = string
        model_id            = string
        namespace_templates = set(string)
      })))
      self_managed_configuration = optional(list(object({
        historical_context_window_size = optional(number)
        invocation_configuration = optional(list(object({
          payload_delivery_bucket_name = string
          topic_arn                    = string
        })))
        trigger_conditions = optional(list(object({
          message_based_trigger = optional(list(object({
            message_count = number
          })))
          time_based_trigger = optional(list(object({
            idle_session_timeout = number
          })))
          token_based_trigger = optional(list(object({
            token_count = number
          })))
        })))
      })))
      type = string
    })))
    memory_record_schema = optional(list(object({
      metadata_schema = optional(list(object({
        extraction_config = optional(list(object({
          llm_extraction_config = optional(list(object({
            definition                 = string
            llm_extraction_instruction = optional(string)
            validation = optional(list(object({
              number_validation = optional(list(object({
                max_value = optional(number)
                min_value = optional(number)
              })))
              string_list_validation = optional(list(object({
                allowed_values = optional(list(string))
                max_items      = optional(number)
              })))
              string_validation = optional(list(object({
                allowed_values = list(string)
              })))
            })))
          })))
        })))
        extraction_type = optional(string)
        key             = string
        type            = optional(string)
      })))
    })))
    reflection_configuration = optional(list(object({
      namespace_templates = set(string)
    })))
  }))
}

