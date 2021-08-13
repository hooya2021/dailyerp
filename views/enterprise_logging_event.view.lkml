view: enterprise_logging_event {
  sql_table_name: `costway_com.enterprise_logging_event`
    ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: event_code {
    type: string
    sql: ${TABLE}.event_code ;;
  }

  dimension: fullaction {
    type: string
    sql: ${TABLE}.fullaction ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: ip {
    type: number
    sql: ${TABLE}.ip ;;
  }

  dimension: log_id {
    type: number
    sql: ${TABLE}.log_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: x_forwarded_ip {
    type: number
    sql: ${TABLE}.x_forwarded_ip ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
