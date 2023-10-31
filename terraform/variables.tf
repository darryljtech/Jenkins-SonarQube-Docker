variable "ami_id" {
  type    = string
  default = "ami-0fc5d935ebf8bc3bc"
}

variable "key_name" {
  type    = string
  default = "jenkins-sonarqube-docker"
}

variable "region_name" {
  type        = string
  description = "The name of the region"
  default     = "us-east-1"
}

variable "vpc_id" {
  type        = string
  description = "The id of vpc"
  default     = "vpc-0a0757ef66a5f26f2"
}