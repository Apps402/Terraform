variable "acr" {
    type = map(object({
        name = string
        rg_name = string
        location = string
        sku = string
        tags = map(string)
    }))
  
}



# variable "acr_name" {}

# variable "acr_loc" {}

# variable "rg_name" {}

# variable "acr_sku" {}

# variable "acr_tags" {}