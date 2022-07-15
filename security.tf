resource "aws_security_group" "ec2_sg" {
	name = "ec2-dev-sg"
	description = "EC2 SG"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["10.0.0.0/8"]
	}

  	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["10.0.0.0/8"]
	}

	#Allow all outbound
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
tags = {
    Name = "ec2-dev-sg"
  }
}
