#define local varaible
locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"
#hr-sap
common_tags {
    owners = var.business_division
    environment = var.environment
 }
}