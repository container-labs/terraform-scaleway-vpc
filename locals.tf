locals {
  region_to_zones = {
    "fr-par" = ["fr-par-1", "fr-par-2", "fr-par-3"]
    "nl-ams" = ["nl-ams-1", "nl-ams-2"]
    "pl-waw" = ["pl-waw-1"]
  }
  # the first zone is the "default" zone in SCW and means something special
  region_to_zone = {
    "fr-par" = ["fr-par-1"]
    "nl-ams" = ["nl-ams-1"]
    "pl-waw" = ["pl-waw-1"]
  }
  multi_zone = false

  zone  = local.region_to_zones[var.region][0]
  zones = local.multi_zone ? local.region_to_zones[var.region] : local.region_to_zone[var.region]
}
