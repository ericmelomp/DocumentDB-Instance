variable "document_db_instance" {
  type = map(object({

    identifier         = string
    cluster_identifier = string
    instance_class     = string
  }))
  default = {
    "instance-docdb" = {
      cluster_identifier = "docdb-cluster-demo"
      identifier         = "docdb-instance-demo"
      instance_class     = "db.t3.medium"
    }
  }
}