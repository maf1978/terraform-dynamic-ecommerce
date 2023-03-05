# vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet AZ"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet AZ"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet AZ1"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet AZ2"
  type        = string
}
variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet AZ1"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet AZ2"
  type        = string
}

#security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that sshh into the ec2"
  type        = string
}

#rds variables
variable "database_snapshot_identifier" {
  default     = "<arn_of_snapshot"
  description = "the datbase snapshot arn "
  type        = string
}

variable "database_instance_identifier" {
  default     = "<instance name created"
  description = "the datbase Instance type"
  type        = string
}

variable "database_instance_identifier" {
  default     = "<instance name created"
  description = "the datbase Instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a satcne db instance"
  type        = bool
}


# ALB variables
variable "ssh_certificate_arn" {
  default     = "<arn certificate>"
  description = "ssl certificate arn"
  type        = string
}

# sns topic variables
variable "operator_email" {
  default     = "ferreromarcos@hotmail.com"
  description = "valid email"
  type        = string
}

#auto scaling notes variables
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "name of the launch template"
  type        = string
}

variable "ec2_image_ID" {
  default     = "ami-id"
  description = "ami template id"
  type        = string
}

#instance type variables
variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "instance type"
  type        = string
}

variable "ec2_key_pair" {
  default     = "name of key pair"
  description = "name of ec2 key pair"
  type        = string
}