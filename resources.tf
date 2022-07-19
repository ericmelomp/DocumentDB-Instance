resource "aws_docdb_cluster_instance" "db_instance" {
  for_each = var.document_db_instance

  cluster_identifier = each.value["cluster_identifier"]
  identifier         = each.value["identifier"]
  instance_class     = each.value["instance_class"]
}