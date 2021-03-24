view: customer_feedback {
  sql_table_name: `costway_com.customer_feedback`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: information {
    type: string
    sql: ${TABLE}.information ;;
  }

  dimension: satisfied {
    type: number
    sql: ${TABLE}.satisfied ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
