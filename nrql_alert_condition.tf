resource "newrelic_nrql_alert_condition" "Check_Failed" {
  policy_id = newrelic_alert_policy.scripted_browser.id

  name        = " CHECKS FAILED "
  description = "Warning if checks failed in 2 time and critical if failed 3 times"
  violation_time_limit_seconds   = 3600
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true

 nrql {
    query = var.nrql_query
  }

critical {
    operator              = "above"
    threshold             = 3
    threshold_duration    = 60
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "equals"
    threshold             = 1
    threshold_duration    =60 
    threshold_occurrences = "ALL"
  }
}
