terraform {

  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
       version = "3.27.7"
    }
  }
}

provider "newrelic" {
  account_id = var.account_id   # Your New Relic account ID
  api_key = var.api_key # Your New Relic user key
  region = var.region        # US or EU (defaults to US)
}
