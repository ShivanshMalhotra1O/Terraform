variable "engine_type" {
  description = "Type of the engine you want to use"
  type = string
}

variable "engine_version" {
  description = "Version of the engine used"
  type = string
}

variable "instance_class" {
  description = "Class of instance used in db "
  type = string
}

variable "allocated_storage" {
  description = "Storage allocated to the db"
  type = number
}

variable "storage_type" {
  description = "Type of storage for db"
  type = string
}

variable "identifier" {
  description = "Name of the Database"
  type = string
}

variable "username" {
  description = "Username for the database"
  type = string
}

variable "password" {
  description = "Password for the database"
  type = string
}

variable "publicly_accessible" {
  description = "If you want your database to be publicly accessible"
  default = false
}

variable "db_name" {
  description = "Name of the Database"
  type = string
}