output "team_notification_rules_id" {
  description = "Map of id values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no id are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_notification_rules_email" {
  description = "Map of email values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no email are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.email if v.email != null && length(v.email) > 0 }
}
output "team_notification_rules_ms_teams" {
  description = "Map of ms_teams values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no ms_teams are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.ms_teams if v.ms_teams != null && length(v.ms_teams) > 0 }
}
output "team_notification_rules_pagerduty" {
  description = "Map of pagerduty values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no pagerduty are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.pagerduty if v.pagerduty != null && length(v.pagerduty) > 0 }
}
output "team_notification_rules_slack" {
  description = "Map of slack values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no slack are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.slack if v.slack != null && length(v.slack) > 0 }
}
output "team_notification_rules_team_id" {
  description = "Map of team_id values across all team_notification_rules, keyed the same as var.team_notification_rules except keys with no team_id are omitted"
  value       = { for k, v in datadog_team_notification_rule.team_notification_rules : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

