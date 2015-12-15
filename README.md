# Packer Ansible FreeBSD

Packer configuration to build a FreeBSD image ready to be provisioned by ansible.

## Troubleshooting

The boot time can be a little tricky to get right, depending on how fast your
machine is. For my Macbook I have it set to 5s, anything slower and the default
GUI installer will get loaded and packer will try to set the hostname to the
command to set the DHCP. If you need to adjust it look for a line like below:

    "boot_wait": "5s",

Also, the DNS I've specified for the box OpenDNS, you may prefer to use
something else such as `8.8.8.8`.
