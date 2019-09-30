variable "iso_name" {
    type = string
    description = "The cloudinit iso will we created like <iso_name>-cloudinit.iso"
}

variable "iso_pool" {
    type = string
    default = "default"
    description = "Storage pool to use for storing the iso, defaluts to 'default'"
}

variable "public_key" {
    type = string
    description = "Public key content to be added to VM's authorized_keys file"
}
