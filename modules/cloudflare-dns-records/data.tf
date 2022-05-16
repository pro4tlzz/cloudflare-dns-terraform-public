# use data to get the records
data "cloudflare_zone" "all" {
  for_each = var.records
  name = each.key
  provider = cloudflare 
}