view: newsletter_queue {
  sql_table_name: `costway_com.newsletter_queue`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: newsletter_sender_email {
    type: string
    sql: ${TABLE}.newsletter_sender_email ;;
  }

  dimension: newsletter_sender_name {
    type: string
    sql: ${TABLE}.newsletter_sender_name ;;
  }

  dimension: newsletter_styles {
    type: string
    sql: ${TABLE}.newsletter_styles ;;
  }

  dimension: newsletter_subject {
    type: string
    sql: ${TABLE}.newsletter_subject ;;
  }

  dimension: newsletter_text {
    type: string
    sql: ${TABLE}.newsletter_text ;;
  }

  dimension: newsletter_type {
    type: number
    sql: ${TABLE}.newsletter_type ;;
  }

  dimension_group: queue_finish {
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
    sql: ${TABLE}.queue_finish_at ;;
  }

  dimension: queue_id {
    type: number
    sql: ${TABLE}.queue_id ;;
  }

  dimension_group: queue_start {
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
    sql: ${TABLE}.queue_start_at ;;
  }

  dimension: queue_status {
    type: number
    sql: ${TABLE}.queue_status ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  measure: count {
    type: count
    drill_fields: [newsletter_sender_name, hostname]
  }
}
