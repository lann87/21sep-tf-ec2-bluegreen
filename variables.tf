variable "name" {
  description = "Unique identifier for the user"
  type        = string
  default     = "alanp-canary"
}

variable "vpc_id" {
  description = "Virtural Private Cloud ID"
  type        = string
  default     = "vpc-0444ca4b865539c2d"
}

variable "enable_blue_env" {
  description = "Enable blue environment"
  type        = bool
  default     = true
}

variable "enable_green_env" {
  description = "Enable green environment"
  type        = bool
  default     = false
}

variable "traffic_distribution" {
  description = "Levels of traffic distribution (options: blue, blue-90, split, green-90, green)"
  type        = string
}

locals {
  traffic_dist_map = {
    blue = {
      blue  = 100
      green = 0
    }
    blue-90 = {
      blue  = 90
      green = 10
    }
    split = {
      blue  = 50
      green = 50
    }
    green-90 = {
      blue  = 10
      green = 90
    }
    green = {
      blue  = 0
      green = 100
    }
  }
}