terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://192.168.3.1:8006/api2/json"
  pm_api_token_id = "terraform@pam!token20220405"
  pm_api_token_secret = "dbde1f14-be7b-46b2-a77a-68a002bdb9aa"
  pm_tls_insecure = true

  pm_log_enable = true
  pm_log_file = "terraform-plugin-proxmox.log"
  pm_log_levels = {
    _default = "debug"
    _capturelog = ""
  }
}

#resource "proxmox_vm_qemu" "kube-server" {
#  count = var.kube_server_count
#  name = "kube-server-0${count.index + 1}"
#  target_node = element(var.proxmox_hosts, count.index)
#  clone = var.template_name
#  agent = 1
#  os_type = "cloud-init"
#  cores = 2
#  sockets = 1
#  cpu = "host"
#  memory = 4096
#  balloon = 2048
#  scsihw = "virtio-scsi-pci"
#  bootdisk = "scsi0"
#  disk {
#    slot = 0
#    size = var.kube_server_disksize 
#    type = "scsi"
#    storage = "local-zfs"
#    iothread = 1
#  }
#  network {
#    model = "virtio"
#    bridge = "vmbr0"
#  }
#
#  lifecycle {
#    ignore_changes = [
#      network,
#    ]
#  }
#  ipconfig0 = "ip=192.168.2.3${count.index + 1}/22,gw=192.168.0.1"
#  sshkeys = <<EOF
#  ${var.ssh_key_terraform}
#  EOF
#}
#resource "proxmox_vm_qemu" "kube-agent" {
#  count = var.kube_agent_count
#  name = "kube-agent-0${count.index + 1}"
#  target_node = element(var.proxmox_hosts, count.index)
#  clone = var.template_name
#  agent = 1
#  os_type = "cloud-init"
#  cores = 2
#  sockets = 1
#  cpu = "host"
#  memory = 8192
#  balloon = 2048
#  scsihw = "virtio-scsi-pci"
#  bootdisk = "scsi0"
#  disk {
#    slot = 0
#    size = var.kube_agent_disksize
#    type = "scsi"
#    storage = "local-zfs"
#    iothread = 1
#  }
#  network {
#    model = "virtio"
#    bridge = "vmbr0"
#  }
#
#  lifecycle {
#    ignore_changes = [
#      network,
#    ]
#  }
#  ipconfig0 = "ip=192.168.2.4${count.index + 1}/22,gw=192.168.0.1"
#  sshkeys = <<EOF
#  ${var.ssh_key_terraform}
#  EOF
#}

##########
## Lafiel
##########

resource "proxmox_vm_qemu" "k3-server-lafiel" {
  count = var.k3_server_count
  name = "${format("k3-server-%02s", count.index + var.k3_lafiel_server_offset)}"
  target_node = "lafiel"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  balloon = 512
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_server_disksize 
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_lafiel_server_offset + var.k3_server_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}
resource "proxmox_vm_qemu" "k3-agent-lafiel" {
  count = var.k3_agent_count
  name = "${format("k3-agent-%02s", count.index + var.k3_lafiel_agent_offset)}"
  target_node = "lafiel"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 4
  sockets = 1
  cpu = "host"
  memory = var.k3_lafiel_agent_mem
  balloon = 2048
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_lafiel_agent_disksize
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_lafiel_agent_offset + var.k3_agent_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}



##########
## Yurika 
##########

resource "proxmox_vm_qemu" "k3-server-yurika" {
  count = var.k3_server_count
  name = "${format("k3-server-%02s", count.index + var.k3_yurika_server_offset)}"
  target_node = "yurika"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  balloon = 512
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_server_disksize 
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_yurika_server_offset + var.k3_server_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}
resource "proxmox_vm_qemu" "k3-agent-yurika" {
  count = var.k3_agent_count
  name = "${format("k3-agent-%02s", count.index + var.k3_yurika_agent_offset)}"
  target_node = "yurika"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 4
  sockets = 1
  cpu = "host"
  memory = var.k3_yurika_agent_mem
  balloon = 2048
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_yurika_agent_disksize
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_yurika_agent_offset + var.k3_agent_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}



##########
## Melfina 
##########

resource "proxmox_vm_qemu" "k3-server-melfina" {
  count = var.k3_server_count
  name = "${format("k3-server-%02s", count.index + var.k3_melfina_server_offset)}"
  target_node = "melfina"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  balloon = 512
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_server_disksize 
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_melfina_server_offset + var.k3_server_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}
resource "proxmox_vm_qemu" "k3-agent-melfina" {
  count = var.k3_agent_count
  name = "${format("k3-agent-%02s", count.index + var.k3_melfina_agent_offset)}"
  target_node = "melfina"
  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 4
  sockets = 1
  cpu = "host"
  memory = var.k3_melfina_agent_mem
  balloon = 2048
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = var.k3_melfina_agent_disksize
    type = "scsi"
    storage = "local-zfs"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "${format("ip=192.168.2.%02s/22,gw=192.168.0.1", count.index + var.k3_melfina_agent_offset + var.k3_agent_base_offset)}"
  sshkeys = <<EOF
  ${var.ssh_key_terraform}
  EOF
}



