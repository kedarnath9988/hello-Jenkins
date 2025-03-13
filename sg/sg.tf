resource "aws_security_group" "allo_now" {
  name        = var.sg_name
  description = var.sg_dis
  

  tags = {
    Name = "allo_now"
  }
ingress {
    from_port        = var.ing_form_port
    to_port          = var.ing_form_port
    protocol         = var.protocol_name
    cidr_blocks      = var.sg_cidr_blocks
    
  }

  egress {
    from_port        = var.sg_egress_port
    to_port          = var.sg_egress_port
    protocol         = var.protocol_name
    cidr_blocks      = var.sg_cidr_blocks
    
  }

}