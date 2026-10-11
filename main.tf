resource "datadog_team_notification_rule" "team_notification_rules" {
  for_each = var.team_notification_rules

  team_id = each.value.team_id

  dynamic "email" {
    for_each = each.value.email != null ? each.value.email : []
    content {
      enabled = email.value.enabled
    }
  }

  dynamic "ms_teams" {
    for_each = each.value.ms_teams != null ? each.value.ms_teams : []
    content {
      connector_name = ms_teams.value.connector_name
    }
  }

  dynamic "pagerduty" {
    for_each = each.value.pagerduty != null ? each.value.pagerduty : []
    content {
      service_name = pagerduty.value.service_name
    }
  }

  dynamic "slack" {
    for_each = each.value.slack != null ? each.value.slack : []
    content {
      channel   = slack.value.channel
      workspace = slack.value.workspace
    }
  }
}

