resource "aws_security_group" "sg_aws" {
  name        = var.name
  vpc_id      = "${aws_vpc.main.id}"

  ingress {   // Inbound Rules
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {     // Outbound Rules
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}