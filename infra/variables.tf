variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string,
    zone   = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

variable "vm_1_name" {
  description = "VM Name"
  type        = string
  default     = "vm-kittygram"
}

variable "image_family" {
  description = "Image family"
  type        = string
  default     = "ubuntu-2404-lts"
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Memory in GB"
  type        = number
  default     = 4
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 40
}

variable "disk_type" {
  description = "Disk type"
  type        = string
  default     = "network-ssd"
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v1"
}

variable "nat" {
  description = "Enable NAT"
  type        = bool
  default     = true
}
