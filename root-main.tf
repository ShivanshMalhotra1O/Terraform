#EC2 Module
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
