resource "newrelic_notification_destination" "team_email_destination" {
  name = "Destination-Teams-Mails"
  type = "EMAIL"

  property {
    key = "email"
    value =  var.emails
  }
}
