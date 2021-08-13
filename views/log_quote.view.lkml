view: log_quote {
  sql_table_name: `costway_com.log_quote`
    ;;

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

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
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
