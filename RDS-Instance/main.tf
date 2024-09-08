# Database
resource "aws_db_instance" "my_db_instance" {
  engine = var.engine_type
  engine_version = var.engine_version
  instance_class = var.instance_class
  storage_type = var.storage_type
  allocated_storage = var.allocated_storage
  identifier = var.identifier
  username = var.username
  password = var.password
  publicly_accessible = var.publicly_accessible

  tags = {
    Name = var.db_name
  }
}