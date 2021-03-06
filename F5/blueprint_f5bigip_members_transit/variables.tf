##----for blueprints--------
variable "resource_group_name" {
  description = "(Required) Name of the resource group to deploy the activity logs."
}

variable "location" {
  description = "(Required) Define the region where the resources will be created."
}

variable "tags" {
  description = "(Required) Tags for the logs repositories to be created "
}

variable "subnet_id" {
  description = "(Required) subnet id "
  type = string
  default = ""
}

variable "network_security_group_id" {
  description = "(Required) network security group id"
  default = ""
}

variable "virtual_network_name" {
  description = "(Required) Tags for the logs repositories to be created "
  default = ""
}
##---- for F5 BIG-IP VM ----
variable "m_size" {
  description = "(Required)Specifies the size of the virtual machine."
  default     = "Standard_B2s"
}

variable "m_hostname" {
  description = "(Required)local name of the VM"
  default     = "ubuntu-transit"
}

variable "ssh_key" {
  description = "Path to the public key to be used for ssh access to the VM."
  default     = "~/.ssh/id_rsa.pub"
}

variable "user" {
  description = "Path to the public key to be used for ssh access to the VM."
  default     = "~/.ssh/.user"
}

variable "passwd" {
  description = "Path to the public key to be used for ssh access to the VM."
  default     = "~/.ssh/.passwd"
}

variable "storage_account_type" {
  description = "Defines the type of storage account to be created"
  default     = "Premium_LRS"
}

variable "mb_instances" {
  description = "Specify the number of vm instances"
  default     = "3"
}

variable "mb_interfaces" {
  description = "Number of public IPs to assign corresponding to one IP per vm"
  default     = "3"
}

variable "mb_public_ip" {
  description = "Number of public IPs to assign corresponding to one IP per vm"
  default     = "3"
}

variable "public_ip_address_allocation" {
  description = "Defines how an IP address is assigned. Options are Static or Dynamic."
  default     = "Static"
}

variable "delete_os_disk_on_termination" {
  description = "Delete datadisk when machine is terminated"
  default     = "true"
}

variable "data_sa_type" {
  description = "Data Disk Storage Account type"
  default     = "Standard_LRS"
}

# - az vm image list --all --publisher F5
# - az vm image show --location koreacentral --urn f5-networks:f5-big-ip-good:f5-bigip-virtual-edition-25m-good-hourly:14.1.003000
#
# marketplace image terms accept
# az vm image accept-terms --urn apps-4-rent:nginx-on-ubuntu-1804:nginx-on-ubuntu-1804:1.0.0

#OS Image info
variable "os_publisher" {
  description = "The name of the publisher of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = "cognosys"
}

variable "os_offer" {
  description = "The name of the offer of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = "nginx-with-centos-75-free"
}

variable "os_sku" {
  description = "The sku of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = "nginx-with-centos-75-free"
}

variable "os_version" {
  description = "The version of the image that you want to deploy"
  default     = "1.2019.1009"
}

##--- End selection of Ubuntu

variable "data_disk_size_gb" {
  description = "Storage data disk size size"
  default     = ""
}

variable "boot_diagnostics" {
  description = "(Optional) Enable or Disable boot diagnostics"
  default     = "false"
}

variable "boot_diagnostics_sa_type" {
  description = "(Optional) Storage account type for boot diagnostics"
  default     = "Standard_LRS"
}

variable "admin_username" {
  description = "The admin username of the VM that will be deployed"
  default     = "azureuser"
}

variable "admin_password" {
  description = "The admin password to be used on the VMSS that will be deployed"
  default     = ""
}

variable "public_ip_dns" {
  description = "globally unique per datacenter region domain name label to apply to each public ip address"
  default     = ["8.8.8.8"]
}
