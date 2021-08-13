view: smtppro_email_log {
  sql_table_name: `costway_com.smtppro_email_log`
    ;;

  dimension: email_body {
    type: string
    sql: ${TABLE}.email_body ;;
  }

  dimension: email_id {
    type: number
    sql: ${TABLE}.email_id ;;
  }

  dimension: email_to {
    type: string
    sql: ${TABLE}.email_to ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: log {
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
    sql: ${TABLE}.log_at ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: template {
    type: string
    sql: ${TABLE}.template ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
