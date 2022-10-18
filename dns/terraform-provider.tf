# set provivders
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

# ask for vars

variable "cloudflare_email" {}
variable "cloudflare_api_key" {}

# set provider var config 

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}