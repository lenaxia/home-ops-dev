variable "kube_server_count" {
  default = 0
}
variable "kube_agent_count" {
  default = 0
}
variable "kube_server_disksize" {
  default = "10G"
}
variable "kube_agent_disksize" {
  default = "20G"
}

variable "k3_server_count" { default = 1 }
variable "k3_agent_count" { default = 1 }
variable "k3_server_disksize" { default = "10G" }
variable "k3_server_base_offset" { default = 50 }
variable "k3_agent_disksize" { default = "80G" }
variable "k3_agent_base_offset" { default = 60 }

variable "k3_lafiel_server_offset" { default = 0 }
variable "k3_lafiel_agent_offset" { default = 0 }
variable "k3_lafiel_agent_mem" { default = "31744" }
variable "k3_lafiel_agent_disksize" { default = "700G" }

variable "k3_yurika_server_offset" { default = 1 }
variable "k3_yurika_agent_offset" { default = 1 }
variable "k3_yurika_agent_mem" { default = "15872" }
variable "k3_yurika_agent_disksize" { default = "150G" }

variable "k3_melfina_server_offset" { default = 2 }
variable "k3_melfina_agent_offset" { default = 2 }
variable "k3_melfina_agent_mem" { default = "15872" }
variable "k3_melfina_agent_disksize" { default = "700G" }

variable "k3_nono_server_offset" { default = 1 }
variable "k3_nono_agent_offset" { default = 1 }
variable "k3_nono_agent_mem" { default = "12288" }
variable "k3_nono_agent_disksize" { default = "150G" }

variable "ssh_key_worklaptop" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+ZxDKfNmtdDEbYUNl4pQfYlatwD75uhcNkl5S/b/IdOT4Km/x1mpmkkaOonSUoPgucjgWHWebgNDYeJ3yoWjSMu4jzi5zBByXH9n2GsH50rQ/E7qwTogEfivIrzhxkHPCLy85Uy1Z7/FhZoe+B9YGmt9NHrI2Wy4FJd2pyfXg7YqeG2uaHy4ix2VAHS0kqbWfCnT13L1RO592CN3aINUAC8s54/DrLw1NKDBkN8S/c/FXNRwRQ84Auy4M5l+MXAMQl2EXab4rdaiwWN+Is00BANcckFZraQX9GgQYTWLlFTN+9CSEbQohRABYBpmeSizgDYM5e2SbVObbXBzWaztB mikekao@SEA-1800428659H"
}
variable "ssh_key_terraform" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjWi/SpE8ZQ/e6YzWHQ5GGhjNkgZJ4ZnzsZ3MdZVUDFTHVoPEWOLiF/p4rSoSK5Zy/5P/ckuxyai3ytP6KxvQvnJcWF7ibxfwyK6KajD44qr4VJPG4lE9HHYDo1oUUKwimFZ7Tb6CWt6gSO+7LnC4ZztVeZqSBBdwG+UFUx577grbehPOLkNAcf+mgsQCJ+FAUDhTkQJzWJ4LgmjRDFoBl01USuqiEKLniolJV7NZYCBBB8nfAdvgjvUJrLC/ij3LUV223vYduvsGZ/OYcdofWoVzfLz2Cv5QFstGqeyn6ZVKPJ+XSufoxtTQJQkyvZ3grigLKTF4TII42EPWY3uBmHr4p+4ljNg67v6AsBIXOv8buWxAbwnvlbuyHbzomeb6mAeXlWI88CctBj8BZhaW/Btw16eC9HcNeYLSNmCYXieawrIIdL51VzBCgMaK04Hbn4oUY8hajDg7Iq+iHRDqIy04FHjhUsamxIshIHURfnPMPW0MLRAPBqh3tPhywh5M= ubuntu@terraform"
}
variable "proxmox_hosts" {
    default = [ "lafiel", "melfina", "yurika" ]
}
variable "template_name" {
    default = "ubuntu-2004-cloudinit-template"
}
