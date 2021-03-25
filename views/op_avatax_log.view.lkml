view: op_avatax_log {
  sql_table_name: `costway_com.op_avatax_log`
    ;;

  dimension: additional {
    type: string
    sql: ${TABLE}.additional ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.level ;;
  }

  dimension: log_id {
    type: number
    sql: ${TABLE}.log_id ;;
  }

  dimension: quote_address_id {
    type: number
    sql: ${TABLE}.quote_address_id ;;
  }

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  dimension: soap_request {
    type: string
    sql: ${TABLE}.soap_request ;;
  }

  dimension: soap_request_headers {
    type: string
    sql: ${TABLE}.soap_request_headers ;;
  }

  dimension: soap_result {
    type: string
    sql: ${TABLE}.soap_result ;;
  }

  dimension: soap_result_headers {
    type: string
    sql: ${TABLE}.soap_result_headers ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
