view: log_visitor {
  sql_table_name: `costway_com.log_visitor`
    ;;

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

  dimension: last_url_id {
    type: number
    sql: ${TABLE}.last_url_id ;;
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

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
