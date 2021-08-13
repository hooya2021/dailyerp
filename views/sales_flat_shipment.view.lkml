view: sales_flat_shipment {
  sql_table_name: `costway_com.sales_flat_shipment`
    ;;

  dimension: billing_address_id {
    type: number
    sql: ${TABLE}.billing_address_id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: email_sent {
    type: number
    sql: ${TABLE}.email_sent ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: packages {
    type: string
    sql: ${TABLE}.packages ;;
  }

  dimension: shipment_status {
    type: number
    sql: ${TABLE}.shipment_status ;;
  }

  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.shipping_address_id ;;
  }

  dimension: shipping_label {
    type: string
    sql: ${TABLE}.shipping_label ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: total_qty {
    type: string
    sql: ${TABLE}.total_qty ;;
  }

  dimension: total_weight {
    type: string
    sql: ${TABLE}.total_weight ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
