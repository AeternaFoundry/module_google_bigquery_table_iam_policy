resource "google_bigquery_table_iam_policy" "bigquery_table_iam_policies" {
  for_each = var.bigquery_table_iam_policies

  dataset_id  = each.value.dataset_id
  policy_data = each.value.policy_data
  table_id    = each.value.table_id
  project     = each.value.project
}

