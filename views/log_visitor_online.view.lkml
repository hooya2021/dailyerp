view: log_visitor_online {
  sql_table_name: `costway_com.log_visitor_online`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: first_visit {
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
    sql: ${TABLE}.first_visit_at ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: last_url {
    type: string
    sql: ${TABLE}.last_url ;;
  }

  dimension_group: last_visit {
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
    sql: ${TABLE}.last_visit_at ;;
  }

  dimension: remote_addr {
    type: number
    sql: ${TABLE}.remote_addr ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitor_id ;;
  }

  dimension: visitor_type {
    type: string
    sql: ${TABLE}.visitor_type ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
