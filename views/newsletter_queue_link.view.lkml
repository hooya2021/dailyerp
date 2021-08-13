view: newsletter_queue_link {
  sql_table_name: `costway_com.newsletter_queue_link`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: letter_sent {
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
    sql: ${TABLE}.letter_sent_at ;;
  }

  dimension: queue_id {
    type: number
    sql: ${TABLE}.queue_id ;;
  }

  dimension: queue_link_id {
    type: number
    sql: ${TABLE}.queue_link_id ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
