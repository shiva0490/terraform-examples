variable "region" {
 default = "ap-south-1" 
}


variable "access_key" {
  description = "copy the access key of the user."
  default = "AKIAVB3DNQI3V3KOQOOT"  
}

variable "secret_key" {
  description = "copy the secret_key of the user."
  default = "tE58TddLVVQ3S+BOLNa1YvwdQWjLE1Ijub9NLkZu"
}

variable "ami_id" {
    default = "ami-0470e33cd681b2476" 
}

variable "instance_type" {
    default = "t2.micro"  
}

