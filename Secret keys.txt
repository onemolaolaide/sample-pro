provider "aws" {

        access_key = "AKIAZXEQHJYRJ3TC4Q6A"
        secret_key  = "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"
        region         = "us-east-2"

}

resource "aws_instance" "ec2" {

  ami           = "ami-0a91cd140a1fc148a"

  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  tags = {
    Name = "ec2_instance"
  }

}

output "ec2_ip" {

    value = [aws_instance.ec2.private_ip]

}



output "ec2_ip_public" {

    value = [aws_instance.ec2.public_ip]

}



output "ec2_name" {

    value = [aws_instance.ec2.tags.Name]


}

