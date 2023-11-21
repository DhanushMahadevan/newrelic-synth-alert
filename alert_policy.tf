resource "newrelic_alert_policy" "scripted_browser" {
  name = "Scripted-Browser-policy"
  incident_preference = "PER_CONDITION"
}
