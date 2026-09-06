locals {
  name_prefix = "${var.project_name}-prod"
  common_tags = {
    Project = var.project_name
    Study   = "boaz-terraform-26"
    Env     = "prod"
  }
}
