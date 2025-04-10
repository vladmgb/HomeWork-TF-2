###cloud vars db

variable "default_zone_db" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "vm ubuntu family"
}

variable "vm_db_hostname" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vm hostname"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "vm platform id"
}

/*

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vm name"
}

variable "vm_db_cores" {
  type        = string
  default     = "2"
  description = "vm cores"
}

variable "vm_db_memory" {
  type        = string
  default     = "2"
  description = "vm memory"
}

variable "vm_db_core_fraction" {
  type        = string
  default     = "20"
  description = "vm core fraction"
}

*/

variable "vpc_name_db" {
  type        = string
  default     = "developdb"
  description = "VPC network & subnet name"
}

variable "vms_resources" {
  description = "resources for all vms"
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "vms_metadata" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHX4ruR2BJd3Na/6a+u1Fns/rETkwMuBAwbux62OoiTd vova@Mynote"
  }
}

