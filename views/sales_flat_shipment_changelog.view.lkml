view: sales_flat_shipment_changelog {
  sql_table_name: `costway_com.sales_flat_shipment_changelog`
    ;;

  dimension: full_record__billing_address_id {
    type: number
    sql: ${TABLE}.fullRecord.billing_address_id ;;
    group_label: "Full Record"
    group_item_label: "Billing Address ID"
  }

  dimension: full_record__created_at {
    type: string
    sql: ${TABLE}.fullRecord.created_at ;;
    group_label: "Full Record"
    group_item_label: "Created At"
  }

  dimension: full_record__customer_id {
    type: number
    sql: ${TABLE}.fullRecord.customer_id ;;
    group_label: "Full Record"
    group_item_label: "Customer ID"
  }

  dimension: full_record__email_sent {
    type: number
    sql: ${TABLE}.fullRecord.email_sent ;;
    group_label: "Full Record"
    group_item_label: "Email Sent"
  }

  dimension: full_record__entity_id {
    type: number
    sql: ${TABLE}.fullRecord.entity_id ;;
    group_label: "Full Record"
    group_item_label: "Entity ID"
  }

  dimension: full_record__increment_id {
    type: string
    sql: ${TABLE}.fullRecord.increment_id ;;
    group_label: "Full Record"
    group_item_label: "Increment ID"
  }

  dimension: full_record__order_id {
    type: number
    sql: ${TABLE}.fullRecord.order_id ;;
    group_label: "Full Record"
    group_item_label: "Order ID"
  }

  dimension: full_record__packages {
    type: string
    sql: ${TABLE}.fullRecord.packages ;;
    group_label: "Full Record"
    group_item_label: "Packages"
  }

  dimension: full_record__shipment_status {
    type: number
    sql: ${TABLE}.fullRecord.shipment_status ;;
    group_label: "Full Record"
    group_item_label: "Shipment Status"
  }

  dimension: full_record__shipping_address_id {
    type: number
    sql: ${TABLE}.fullRecord.shipping_address_id ;;
    group_label: "Full Record"
    group_item_label: "Shipping Address ID"
  }

  dimension: full_record__shipping_label {
    type: string
    sql: ${TABLE}.fullRecord.shipping_label ;;
    group_label: "Full Record"
    group_item_label: "Shipping Label"
  }

  dimension: full_record__store_id {
    type: number
    sql: ${TABLE}.fullRecord.store_id ;;
    group_label: "Full Record"
    group_item_label: "Store ID"
  }

  dimension: full_record__total_qty {
    type: string
    sql: ${TABLE}.fullRecord.total_qty ;;
    group_label: "Full Record"
    group_item_label: "Total Qty"
  }

  dimension: full_record__total_weight {
    type: string
    sql: ${TABLE}.fullRecord.total_weight ;;
    group_label: "Full Record"
    group_item_label: "Total Weight"
  }

  dimension: full_record__updated_at {
    type: string
    sql: ${TABLE}.fullRecord.updated_at ;;
    group_label: "Full Record"
    group_item_label: "Updated At"
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: primary_key__entity_id {
    type: number
    sql: ${TABLE}.primaryKey.entity_id ;;
    group_label: "Primary Key"
    group_item_label: "Entity ID"
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
