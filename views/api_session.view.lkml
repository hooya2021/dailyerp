view: api_session {
  sql_table_name: `costway_com.api_session`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: logdate {
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
    sql: ${TABLE}.logdate ;;
  }

  dimension: sessid {
    type: string
    sql: ${TABLE}.sessid ;;
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
