variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "environment" {
  description = "The environment name"
  type        = string
}

variable "nlbname" {
  description = "The name of the NLB"
  type        = string
}

variable "tgname" {
  description = "The name of the target group"
  type        = string
}

variable "nlbname_public" {
  description = "The name of the public NLB"
  type        = string
}

variable "tgname_public" {
  description = "The name of the public target group"
  type        = string
}

variable "rolename" {
  description = "The IAM role name"
  type        = string
}

variable "instanceprofilename" {
  description = "The IAM instance profile name"
  type        = string
}
