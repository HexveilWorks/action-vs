

variable "resource-group" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}
