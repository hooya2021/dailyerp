view: log_url {
  sql_table_name: `costway_com.log_url`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: url_id {
    type: number
    sql: ${TABLE}.url_id ;;
  }

  dimension_group: visit {
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
    sql: ${TABLE}.visit_time ;;
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
