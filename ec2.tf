resource "aws_instance" "web-1" {
    # ami =  data.aws_ami.my_ami.id 
    ami = "ami-09d069a04349dc3cb"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "AUG5-VPC-DEV-Keypai"
    subnet_id =  aws_subnet.subnet1-public.id 
    vpc_security_group_ids = [ aws_security_group.allow_all.id ]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "Prod"
        Owner = "Muni"
    }
}