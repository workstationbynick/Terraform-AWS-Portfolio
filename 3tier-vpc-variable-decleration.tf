# VPC Input Variables

# VPC DETAILS
variable "vpc_name" {
  description = "VPC Name for myapp"
  type        = string 
  default     = "myapp-vpc"
}

# VPC CIDR BLOCK
variable "vpc_cidr_block" {
  description = "CIDR Block for myapp VPC"
  type        = string 
  default     = "40.0.0.0/16"
}

# VPC AVAILABILITY ZONE
variable "vpc_availability_zones" {
  description = "Availability Zones for myapp VPC"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

# VPC PRIVATE SUBNET
variable "vpc_private_subnets" {
  description = "Private Subnets for myapp VPC"
  type        = list(string)
  default     = ["40.0.1.0/24", "40.0.2.0/24"]
}

# VPC PUBLIC SUBNET
variable "vpc_public_subnets" {
  description = "Public Subnets for myapp VPC"
  type        = list(string)
  default     = ["40.0.101.0/24", "40.0.102.0/24"]
}

# VPC DATABASE SUBNET
variable "vpc_database_subnets" {
  description = "Database Subnets for myapp VPC"
  type        = list(string)
  default     = ["40.0.7.0/24", "40.0.8.0/24"]
}

# VPC CREATE DATABASE SUBNET GROUP (True or False)
variable "vpc_create_database_subnet_group" {
  description = "Create Database Subnet Group for myapp VPC"
  type        = bool
  default     = true 
}

# VPC CREATE DATABASE SUBNET ROUTE TABLE (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "Create Database Subnet Route Table for myapp VPC"
  type        = bool
  default     = true   
}

# VPC ENABLE NATGATEWAY (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets in myapp VPC"
  type        = bool
  default     = true  
}

# VPC SINGLE NATGATEWAY (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable Only Single NAT Gateway in One Availability Zone for myapp VPC"
  type        = bool
  default     = true
}
