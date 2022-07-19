resource "aws_docdb_cluster" "db_instance" {
  for_each = var.document_db

  cluster_identifier = each.value["cluster_identifier"]
  identifier         = each.value["identifier"]
  instance_class     = each.value["instance_class"]
}