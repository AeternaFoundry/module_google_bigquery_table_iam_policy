variable "bigquery_table_iam_policies" {
  description = <<EOT
Map of bigquery_table_iam_policies, attributes below
Required:
    - dataset_id
    - policy_data
    - table_id
Optional:
    - project
EOT

  type = map(object({
    dataset_id  = string
    policy_data = string
    table_id    = string
    project     = optional(string)
  }))
}

