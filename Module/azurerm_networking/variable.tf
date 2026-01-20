variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
    managed_by = optional(string)
    tags     = optional(map(string))    
  }))   
}
# variable "Vnets" {
#   description = "A map of virtual networks to create"
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     address_space       = list(string)
#     dns_servers         = optional(list(string))
#     subnets = list(object({
#       name             = string
#       address_prefixes = list(string)
#       security_group   = optional(string)
#     }))
#     tags = optional(map(string))
#   }))   
# }