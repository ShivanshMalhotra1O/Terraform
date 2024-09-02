variable "ami" {
  description = "Add the ami of the os you want in your instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance you want"
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "subnet_id" {
  description = "Subnet IDs in the VPC's"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "sg_id" {
  description = "The ID of the existing security group"
  type        = string
}