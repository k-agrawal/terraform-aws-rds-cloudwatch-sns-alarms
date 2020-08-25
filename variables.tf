variable "db_instance_ids" {
  description = "The instance IDs of the RDS database instances that you want to monitor."
  type        = list(string)
}

variable "aws_sns_topic_arn" {
  description = "The bla of the SNS topic you want to use for alerting"
  type        = string
}

variable "name_prefix" {
  description = "Alarm name prefix for each alarm"
  type        = string
  default     = ""
}

variable "period" {
  description = "The threshold is analyzed over the last X seconds, where X is alarm_period"
  type        = string
  default     = "600"
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  type        = string
  default     = "1"
}

variable "burst_balance_threshold" {
  description = "The minimum percent of General Purpose SSD (gp2) burst-bucket I/O credits available."
  type        = string
  default     = 20
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = string
  default     = 80
}

variable "cpu_credit_balance_threshold" {
  description = "The minimum number of CPU credits (t2 instances only) available."
  type        = string
  default     = 20
}

variable "disk_queue_depth_threshold" {
  description = "The maximum number of outstanding IOs (read/write requests) waiting to access the disk."
  type        = string
  default     = 64
}

variable "freeable_memory_threshold" {
  description = "The minimum amount of available random access memory in Byte."
  type        = string
  default     = 64000000

  # 64 Megabyte in Byte
}

variable "free_storage_space_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = string
  default     = 2000000000

  # 2 Gigabyte in Byte
}

variable "swap_usage_threshold" {
  description = "The maximum amount of swap space used on the DB instance in Byte."
  type        = string
  default     = 256000000

  # 256 Megabyte in Byte
}
