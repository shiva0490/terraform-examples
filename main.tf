
resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "HelloWorld"
    env = "Dev"
    requestID = "1234"
    
  }
}
resource "aws_instance" "test" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "TEST-HelloWorld"
    env = "Dev"
    requestID = "1234"
    owner = "shiva"
    
  }
}

output "instance_ip_addr" {
    value = aws_instance.web.private_ip
}

output "instance_public_ip_addr" {
  value = aws_instance.web.public_ip
}

output "instance_ip_addr-test" {
    value = aws_instance.test.private_ip
}

output "instance_public_ip_addr-test" {
  value = aws_instance.test.public_ip
}