variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "instance_name" {
        description = "Name of the instance to be created"
        default = "tf-example"
}

variable "instance_type" {
        description = "This is my instance type"
        default     = "t2.micro"
}

variable "security_group" {
        description = "This is my isecurity group"
        default     = "sg-0be40661ed64713e4"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-05a13954158a4046c"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-063e3e5f91a7984ad"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}

variable "key_pair_name" {
        default = "demo"
}
