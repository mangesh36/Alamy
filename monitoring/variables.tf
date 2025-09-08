variable "environment" {
  default = "dev"
}

variable "project" {
    default = "eks"
  
}

variable "SOURCE_GMAIL_ID"{
  description = "Source GMAIl Id"
  default = "mangeshmg367@gmail.com"
}
variable "SOURCE_AUTH_PASSWORD"{
  description = "Source Auth Password"
  default ="eumqeqwngvyyrbqg"
  sensitive = true
}
variable "DESTINATION_GMAIL_ID"{
  description = ""
  default ="khandelwal12@gmail.com"
}

variable "domain_name" {
  default = "alamyproject.com"
}

variable "allow_ip" {
  default = ["0.0.0.0/0"]
}