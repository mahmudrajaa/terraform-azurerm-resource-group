variable "location" {
  type = string
  description = "Resource group location"
  validation {
    condition     = length(var.location) > 0
    error_message = "The location must be provided."
  }
}

variable "environment"{
  type = string
  description = "Environment variable value"
  default="dev"
}
variable "rgpurpose"{
  type = string
  description = "rgpurpose variable value"
  default="demo"
}