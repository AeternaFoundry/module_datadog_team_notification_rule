variable "team_notification_rules" {
  description = <<EOT
Map of team_notification_rules, attributes below
Required:
    - team_id
Optional:
    - email (block):
        - enabled (optional)
    - ms_teams (block):
        - connector_name (optional)
    - pagerduty (block):
        - service_name (optional)
    - slack (block):
        - channel (optional)
        - workspace (optional)
EOT

  type = map(object({
    team_id = string
    email = optional(list(object({
      enabled = optional(bool)
    })))
    ms_teams = optional(list(object({
      connector_name = optional(string)
    })))
    pagerduty = optional(list(object({
      service_name = optional(string)
    })))
    slack = optional(list(object({
      channel   = optional(string)
      workspace = optional(string)
    })))
  }))
}

