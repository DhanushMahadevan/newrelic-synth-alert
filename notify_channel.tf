resource "newrelic_notification_channel" "team_email_channel" {
  name = "Notify-Channel-Subject"
  type = "EMAIL"
  destination_id = newrelic_notification_destination.team_email_destination.id
  product = "IINT"
property {
    key = "subject"
    value = "[{{state}}] - {{priority}} - [{{issueTitle}}]" 
  }
  property {
    key = "customDetailsEmail"
    value =  "1. IsAcknowledged: {{isAcknowledged}} \n 2. Acknowledged By: {{acknowledgedBy}} \n 3. Issue Closed By: {{closedBy}} \n 4. ViolationClosedCause: {{accumulations.violationClosedCause}} \n"
  
  }
}

