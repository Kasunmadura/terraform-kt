
variable "environment" {
  type        = string
  description = "The name of the environment"
  default     = "test"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "awsprops" {
  type = map(string)
  default = {
    region       = "us-east-1"
    ami          = "ami-022e1a32d3f742bd8"
    itype        = "t2.micro"
    publicip     = true
    keyname      = "testkasundemo"
    secgroupname = "IAC-Sec-Group"
  }
}