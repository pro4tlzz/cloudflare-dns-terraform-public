# define module settings and zone_id key, also define txt_records as all txt records into a dict
module "cloudflare-zone-records" {
  source = "./cloudflare-zone-records"
  for_each = var.records
  zone_id = data.cloudflare_zone.all[each.key].zone_id
  txt_records = lookup(each.value, "TXT", {})
  mx_records = lookup(each.value, "MX", {})
  cname_records = lookup(each.value, "CNAME", {})
  a_records = lookup(each.value, "A", {})
}