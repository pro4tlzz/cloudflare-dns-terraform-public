# define module path and records 
module "cloudflare-dns-records" {
  source = "../modules/cloudflare-dns-records"
  records = var.records
}