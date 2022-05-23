//name of the bucket
variable "bucket_name" {
    default = "bucket1"
}

variable "username" {
  type = list
  default = ["new1","new2","new3"]
  }

//enable versioning
variable "versioning" {
  default = false
}


//incomplete multipart upload deletion
variable "multipart_delete" {
  default = true
}

variable "multipart_days" {
  default = 3
}
