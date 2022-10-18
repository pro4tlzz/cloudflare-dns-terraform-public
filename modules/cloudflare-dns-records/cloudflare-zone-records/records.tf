# define the record to manage with all the keys
# as you see type and ttl for txt are hardcoded

resource "cloudflare_record" "txt" {
  for_each        = var.txt_records
  zone_id         = var.zone_id
  name            = each.value["name"]
  type            = "TXT"
  ttl             = 60
  value           = each.value["record"]
  allow_overwrite = true
}

resource "cloudflare_record" "mx" {
  for_each        = var.mx_records
  zone_id         = var.zone_id
  name            = each.value["name"]
  type            = "MX"
  ttl             = 60
  value           = each.value["record"]
  priority        = each.value["priority"]
  allow_overwrite = true
}

resource "cloudflare_record" "cname" {
  for_each        = var.cname_records
  zone_id         = var.zone_id
  name            = each.value["name"]
  type            = "CNAME"
  ttl             = 60
  value           = each.value["record"]
  allow_overwrite = true
}

resource "cloudflare_record" "a" {
  for_each        = var.a_records
  zone_id         = var.zone_id
  name            = each.value["name"]
  type            = "A"
  ttl             = 60
  value           = each.value["record"]
  allow_overwrite = true
}