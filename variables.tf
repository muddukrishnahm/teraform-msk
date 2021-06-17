variable "regions" {
  default = "us-east-2"
}

variable "instance_kind" {
  default = "kafka.t3.small"
}

variable "volume_size" {
  default = "2"
}

variable "subnets" {
  type = list(string)
  default = [ "subnet-578ad31b", "subnet-938f7eee", "subnet-5a04bc31" ]
}