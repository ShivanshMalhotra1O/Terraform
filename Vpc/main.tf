# VPC
resource "aws_vpc" "my_aws_vpc" {
  cidr_block = var.vpc_config.cidr_block
}

# Subnet
resource "aws_subnet" "vpc_subnet" {
  vpc_id = aws_vpc.my_aws_vpc.id
  for_each = var.subnet_config
  cidr_block = each.value.cidr_block
  availability_zone =  each.value.availability_zone
  tags = {
    Name = each.key
  }
}

# Internet Gateway
resource "aws_internet_gateway" "vpc_internet_gateway" {
 vpc_id = aws_vpc.my_aws_vpc.id
 
 tags = {
   Name = var.internet_gateway_config.name
 }
}


# Routing Table


# To check whether the subnet are public or private
locals {
  public_subnet = {
    # key = {} if public is true in subnet_config
    for key , config in var.subnet_config : key => config if config.public
  }

  private_subnet = {
    # key = {} if public is true in subnet_config
    for key , config in var.subnet_config : key => config if !config.public
  }
}



# Public Route Table
resource "aws_route_table" "vpc_public_rt" {
  vpc_id = aws_vpc.my_aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_internet_gateway.id
  }

  tags = {
    Name = var.public_rt_config.name
  }
}


resource "aws_route_table_association" "vpc_public_rt_association" {

  for_each = local.public_subnet  
  subnet_id      = aws_subnet.vpc_subnet[each.key].id
  route_table_id = aws_route_table.vpc_public_rt.id
}



# Private Route Table
resource "aws_route_table" "vpc_private_rt" {
  vpc_id = aws_vpc.my_aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_internet_gateway.id
  }

  tags = {
    Name = var.private_rt_config.name
  }
}


resource "aws_route_table_association" "vpc_public_rt_association" {

  for_each = local.public_subnet  
  subnet_id      = aws_subnet.vpc_subnet[each.key].id
  route_table_id = aws_route_table.vpc_private_rt.id
}
