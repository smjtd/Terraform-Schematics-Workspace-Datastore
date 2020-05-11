variable "zones" {
  type = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "images" {
  type = "map"

  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}
resource "null_resource" "sleep" {
  
	provisioner "local-exec" {
	  command = "sleep 2"
	}
  }


output "Workvalues" {
  value = "${var.images}"
}
