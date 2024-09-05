variable "vpc_config" {

  description = "To get the CIDR and Name of the VPC from user"

  type = object({
    cidr_block = string
    name = string 
  })
}

variable "subnet_config" {

  # sub1 = {cidr=... az=...} sub2 = {} 
  description = "To create the subnet by taking CIDR , AZ's and Name of the subnet"

  type = map(object({
    availability_zone = string
    cidr_block = string
    public = optional(bool,false)
  }))
}

variable "internet_gateway_config" {
  description = "Name of the Internet Config"  
  type = object({
    name = string
  })
}

variable "public_rt_config" {
  description = "Name of the Public Route Table "
  type = string
}

variable "private_rt_config" {
  description = "Name of the Public Route Table "
  type = string
}