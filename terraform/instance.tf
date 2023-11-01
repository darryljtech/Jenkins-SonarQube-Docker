data "aws_security_group" "jenkins_sg" {
  name = var.security_group
}





resource "aws_instance" "jenkins_instance" {
  ami             = var.ami_id
  instance_type   = "t2.medium"
  key_name        = var.key_name
  vpc_security_group_ids = [data.aws_security_group.jenkins_sg.id]
  subnet_id       = "subnet-05e7ce27ed23e3c57"
  count           = 1
  tags = {
    name = "Jenkins"
  }

}

resource "aws_instance" "sonarqube_instance" {
  ami             = var.ami_id
  instance_type   = "t2.medium"
  key_name        = var.key_name
  vpc_security_group_ids = [data.aws_security_group.jenkins_sg.id]
  subnet_id       = "subnet-05e7ce27ed23e3c57"
  count           = 1
  tags = {
    name = "Sonarqube"
  }

}

resource "aws_instance" "docker_instance" {
  ami             = var.ami_id
  instance_type   = "t2.medium"
  key_name        = var.key_name
  vpc_security_group_ids = [data.aws_security_group.jenkins_sg.id]
  subnet_id       = "subnet-05e7ce27ed23e3c57"
  count           = 1
  tags = {
    name = "Docker"
  }

}