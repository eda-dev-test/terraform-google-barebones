variable "name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "metadata" {
  type = map(string)
}

variable "tags" {
  type = list(string)
}