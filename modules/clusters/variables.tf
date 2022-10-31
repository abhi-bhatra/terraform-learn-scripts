variable "region" {
  description = "The aws region. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html"
  type        = string
  default     = "us-west-1"
}

variable "availability_zones" {
  type = list(string)
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 2
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "project" {
  description = "Project name added to all the resources"
  type = string
}

variable "env" {
  description = "Environment in which resources are provisioned"
  type = string
}

# variable "db_username" {
#   description = "RDS DB Username"
#   type = string
# }

# variable "db_password" {
#   description = "RDS DB password"
#   type = string
# }
