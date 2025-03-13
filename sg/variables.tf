variable sg_name {
  default     = "allo_now"
}

variable sg_dis {
  
  default     = "allo_now inbound traffic and all outbound traffic"
 
}

variable ing_form_port {
  type = number 
  default     = 22
 
}

variable sg_cidr_blocks {
  type = list(string)
  default     = ["0.0.0.0/0"]
 
}

variable protocol_name {
  
  default     = "tcp"
 
}

variable sg_egress_port  {
  type = number
  default     = 0
 
}
