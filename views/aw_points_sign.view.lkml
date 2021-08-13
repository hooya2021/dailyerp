view: aw_points_sign {
  sql_table_name: `costway_com.aw_points_sign`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: sign_continue_days {
    type: number
    sql: ${TABLE}.sign_continue_days ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.sign_date ;;
  }

  dimension: summary_id {
    type: number
    sql: ${TABLE}.summary_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
