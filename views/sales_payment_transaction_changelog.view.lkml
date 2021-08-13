view: sales_payment_transaction_changelog {
  sql_table_name: `costway_com.sales_payment_transaction_changelog`
    ;;

  dimension: full_record__additional_information {
    type: string
    sql: ${TABLE}.fullRecord.additional_information ;;
    group_label: "Full Record"
    group_item_label: "Additional Information"
  }

  dimension: full_record__created_at {
    type: string
    sql: ${TABLE}.fullRecord.created_at ;;
    group_label: "Full Record"
    group_item_label: "Created At"
  }

  dimension: full_record__is_closed {
    type: number
    sql: ${TABLE}.fullRecord.is_closed ;;
    group_label: "Full Record"
    group_item_label: "Is Closed"
  }

  dimension: full_record__order_id {
    type: number
    sql: ${TABLE}.fullRecord.order_id ;;
    group_label: "Full Record"
    group_item_label: "Order ID"
  }

  dimension: full_record__parent_id {
    type: number
    sql: ${TABLE}.fullRecord.parent_id ;;
    group_label: "Full Record"
    group_item_label: "Parent ID"
  }

  dimension: full_record__parent_txn_id {
    type: string
    sql: ${TABLE}.fullRecord.parent_txn_id ;;
    group_label: "Full Record"
    group_item_label: "Parent Txn ID"
  }

  dimension: full_record__payment_id {
    type: number
    sql: ${TABLE}.fullRecord.payment_id ;;
    group_label: "Full Record"
    group_item_label: "Payment ID"
  }

  dimension: full_record__transaction_id {
    type: number
    sql: ${TABLE}.fullRecord.transaction_id ;;
    group_label: "Full Record"
    group_item_label: "Transaction ID"
  }

  dimension: full_record__txn_id {
    type: string
    sql: ${TABLE}.fullRecord.txn_id ;;
    group_label: "Full Record"
    group_item_label: "Txn ID"
  }

  dimension: full_record__txn_type {
    type: string
    sql: ${TABLE}.fullRecord.txn_type ;;
    group_label: "Full Record"
    group_item_label: "Txn Type"
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: primary_key__transaction_id {
    type: number
    sql: ${TABLE}.primaryKey.transaction_id ;;
    group_label: "Primary Key"
    group_item_label: "Transaction ID"
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.tableName ;;
  }

  dimension: timestamp_ms {
    type: number
    sql: ${TABLE}.timestampMs ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
