resource "libvirt_cloudinit_disk" "cloudinit" {
    name = "${var.iso_name}-cloudinit.iso"
    pool = var.iso_pool
    user_data = <<-EOF
    #cloud-config
    datasource_list: [ None ]
    ssh_authorized_keys:
      - ${var.public_key}
    EOF
}
