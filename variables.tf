################### NOTE: [ DEFAULT VALUES ARE SURRENDED BY DOUBLE QUOTES] ############################

variable "api_key" {
  default     =  # Your API_KEY
}

variable "account_id" {
  default     = # Your Account_Id
}

variable "region" {
  default     = # Your region either U.S or EU
}



#########################################################################
##SCRIPTED BROWSER

variable "name" {
default =  # Mention the Monitor Name 
}

variable "type" {
default =  # Mention the Monitor type either SCRIPT_BROWSER OR SCRIPT_API.
}


variable "status" {
default =  # Mention the one of the Status such as ENABLED,DISABLED and MUTED.
}

variable "locations_public" {
default =  # Mention the public locations within the Square Bracket.
}

variable "period" {
default = # Mention the period of the monitor 
}



variable "runtime_type_version" {
default =  # Runtime_type_version 
}
variable "runtime_type" {
default =  # Either CHROME_BROWSER or NODE_API
}



#########################################################################


variable "nrql_query" {

default = "SELECT max(duration) FROM SyntheticCheck"

}

###################################################################
##WORKFLOW


variable "emails" {

default = # Place your emails separated by commas.
  
}

variable "notify_triggers" {
default =  ["ACTIVATED","ACKNOWLEDGED","PRIORITY_CHANGED","CLOSED"] 
}
