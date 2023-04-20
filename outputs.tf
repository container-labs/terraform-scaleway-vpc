output "id" {
  value = scaleway_vpc_private_network.main.id
}

output "zones" {
  value = scaleway_vpc_private_network.main.*.zone
}

output "cidr" {
  value = scaleway_vpc_public_gateway_dhcp.main.subnet
}
