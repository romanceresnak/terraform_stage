# ------------------------------------------------------------------------
# REQUIRED PARAMETERS
#-------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "ami" {
  description = "The AMI to run in the cluster"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run(t2.micro for free tier)"
  type        = string
}

variable "min_siz" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

variable "subnets_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}

variable "enable_autoscaling" {
  description = "If the attribute is set to true, enable auto scaling"
  type        = bool
}

# ------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ARN - Amazon Resource Name
#-------------------------------------------------------------------------
variable "target_groups_arns" {
  description = "The ARNs of ELB target groups in which to register Instances"
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  description = "The type of health check to perform. Must be one of: EC2 or ELB"
  type        = string
  default     = "EC2"
}

variable "user_data" {
  description = "The User data script to run in each Instances at boot"
  type        = string
  default     = null
}

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

