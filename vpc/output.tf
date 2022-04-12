output "vpcid" {
    value = "${aws_vp.my_vpc.id}"
}

output "subnetid" {
    value = "${aws_subnet.public_subnet1.id}"
}

output "routingid" {
    value = "${aws_route_table.public_rt.id}"
}
