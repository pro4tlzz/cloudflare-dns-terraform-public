# define txt_records from the data source in other file and map to their dict value
variable "txt_records" {
  type = map(any)
}

variable "mx_records" {
  type = map(any)
}

variable "cname_records" {
  type = map(any)
}

variable "a_records" {
  type = map(any)
}

# define zone_id from the data source in other file and map to a string
variable "zone_id" {
  type = string
}