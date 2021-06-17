resource "aws_msk_cluster" "example" {
  cluster_name           = "example"
  kafka_version          = "2.6.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "${var.instance_kind}"
    ebs_volume_size = var.volume_size
    client_subnets = var.subnets
    security_groups = ["sg-0d34544f0b03af5b4"]
  }
}