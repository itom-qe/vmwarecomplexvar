variable "data_center"              {
  default = "devcloud"
}

variable "cluster"                  {
  default = {
    cluster1 : "fenrir"
    "cluster2" = "fenrir2"
  }
  type    = map
}

variable "workload_datastore" {
  type = tuple([bool, map(string)])
  default = [true, {
    type1 = "m1.small"
    "type2"   = "vmstore",
    type3 : "m1.medium"
  }]
}

variable "join_domain"              {
   default = "itomcmp.servicenow.com"
}
variable "domain_admin_user"        {
  default = "sundaresan@itomcmp.servicenow.com"
}
variable "domain_admin_password"    {
   default = "cmpdev123"
}
variable "user"                     {
    default = "cmpdev.svc@itomcmp.servicenow.com"
}
variable "password"                 {
    default = "cmp#VxB@N7SM"
}
variable "vsphere_server"           {
    default = "10.198.1.13"
}
variable "vmname"{}
variable "objectVar" {
 default = {
   name = "My Vm Instance"
   //commment .......,
   env  = "Dev",
   isAvailable = true
 }
 type = object({
   name = string
   env  = string,
   isAvailable = bool
 })
 description = "Tags for the EC2 instance"
}
