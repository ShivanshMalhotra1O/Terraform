variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "environment" {
  description = "Environment for the bucket resources"
  type        = string
}

variable "bucket_versioning" {
  description = "Versioning for Bucket"
  type        = string
  default = false
}