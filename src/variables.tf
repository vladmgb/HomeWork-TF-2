###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "vm ubuntu family"
}

variable "vm_web_hostname" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vm hostname"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "vm platform id"
}

/*

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vm name"
}

variable "vm_web_cores" {
  type        = string
  default     = "2"
  description = "vm cores"
}

variable "vm_web_memory" {
  type        = string
  default     = "1"
  description = "vm memory"
}

variable "vm_web_core_fraction" {
  type        = string
  default     = "5"
  description = "vm core fraction"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
   default    = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}
*/