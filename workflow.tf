resource "newrelic_workflow" "team_workflow" {
  name = "SYNTHETIC-WORKFLOW"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"


  issues_filter {
    name = "filter-example"
    type = "FILTER"

    predicate {
      attribute = "priority"
      operator = "EQUAL"
      values = ["HIGH","CRITICAL"]
    }
  }

  destination {
    channel_id = newrelic_notification_channel.team_email_channel.id
    notification_triggers = var.notify_triggers
  }
}
