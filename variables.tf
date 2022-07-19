variable "document_db_instance" {
  type = map(object({

    indentifier        = string
    cluster_identifier = string
    instance_class     = string
  }))
  default = {
    "instance-docdb" = {
      cluster_identifier = "docdb-cluster-demo"
      indentifier        = "docdb-instance-demo"
      instance_class     = "db.t3.medium"
    }
  }
}