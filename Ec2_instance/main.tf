provider "aws" {
    region = "us-west-1"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "ec2-instance" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    count = "${var.number_of_instances}"
    security_groups = "$(var.security_group)"
    subnet_id = "${var.subnet_id}"
    key_name = "${var.key_pair_name}"
    
tags = {
    name = "${var.instance_name}"
    }
}
