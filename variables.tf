variable "document_db_instance" {
  description = "Defining the types of arguments in the map of object"
  type = map(object({

    identifier         = string
    cluster_identifier = string
    instance_class     = string
  }))
#For creating the instance, you need to set the cluster_identifier.
#If you are creating both at once, use the meta-argument "depends_on".
  default = {
    "instance-docdb" = {
      cluster_identifier = "docdb-cluster-demo"
      identifier         = "docdb-instance-demo"
      instance_class     = "db.t3.medium"
    }
  }
}
#You can create the tf.vars file instead of using "default" for the values