resource "newrelic_synthetics_script_monitor" "Newrelic-Login-Test" {
  status = var.status
  name = var.name
  type = var.type 
  locations_public = var.locations_public
  period = var.period
  enable_screenshot_on_failure_and_script = true
  script = <<EOF
assert = require('assert');
var defaultTimeout = 30000;

$browser.get('https://login.newrelic.com').then(function() {
  $browser.waitForAndFindElement($driver.By.id('login_email'),defaultTimeout).then(function(loginEmail) {


  //SECURE CRED HERE
  loginEmail.sendKeys($secure.NR_LOGIN_NAME).then(function() {

    $browser.waitForAndFindElement($driver.By.id('login_password'), defaultTimeout).then(function(passInput) {

   //SECURE CRED HERE
   passInput.sendKeys($secure.NR_PSWD).then(function() {

    $browser.waitForAndFindElement($driver.By.id('login_submit'), defaultTimeout).then(function(loginButton) {
       loginButton.click();

               })
            })
         })
      })
   })
})
EOF
  runtime_type_version = var.runtime_type_version
  runtime_type         = var.runtime_type
  script_language      = "JAVASCRIPT"
}
