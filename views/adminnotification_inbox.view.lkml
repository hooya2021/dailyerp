view: adminnotification_inbox {
  sql_table_name: `costway_com.adminnotification_inbox`
    ;;

  dimension_group: date_added {
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
    sql: ${TABLE}.date_added ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_read {
    type: number
    sql: ${TABLE}.is_read ;;
  }

  dimension: is_remove {
    type: number
    sql: ${TABLE}.is_remove ;;
  }

  dimension: notification_id {
    type: number
    sql: ${TABLE}.notification_id ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
