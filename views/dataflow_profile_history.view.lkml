view: dataflow_profile_history {
  sql_table_name: `costway_com.dataflow_profile_history`
    ;;

  dimension: action_code {
    type: string
    sql: ${TABLE}.action_code ;;
  }

  dimension: history_id {
    type: number
    sql: ${TABLE}.history_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: performed {
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
    sql: ${TABLE}.performed_at ;;
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
