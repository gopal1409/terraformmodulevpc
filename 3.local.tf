#define local varaible
locals {
  owners = var.business_division #owner value we define in terrafomr.tfvars
  environment = var.environment #environment value we define in terrafomr.tfvars
  name = "${var.business_division}-${var.environment}"
#hr-sap
common_tags = {
    owners = var.business_division
    environment = var.environment
 }
}