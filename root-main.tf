# EC2 Module
module "EC2" {
  source        = "./EC2-Instance"
  ami           = "" 
  instance_type = ""
  subnet_id     = ""
  key_name      = ""
  name          = ""
  vpc_id        = ""
  sg_id         = "" 
}

# Security Groups
module "SecurityGroups"{
  source = "./Security-Groups"
  name = ""
}

# VPC
module "VPC" {
  source = "./Vpc"
  vpc_config = ""
  subnet_config = ""
  internet_gateway_config = ""
  public_rt_config = ""
  private_rt_config = ""
}

# RDS
module "RDS" {
  source = "./RDS-Instance"
  engine_type = ""
  engine_version = ""
  instance_class = ""
  storage_type = ""
  allocated_storage = ""
  identifier = ""
  username = ""
  password = ""
  publicly_accessible = ""
  db_name = ""
}

# S3
module "S3" {
  source = "./S3-Bucket"
  bucket_name = ""
  environment = ""
  bucket_versioning = "" // bool value : true or false
  }
