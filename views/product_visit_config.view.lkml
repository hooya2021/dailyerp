view: product_visit_config {
  sql_table_name: `costway_com.product_visit_config`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email_delay_times {
    type: number
    sql: ${TABLE}.email_delay_times ;;
  }

  dimension: email_second_delay_times {
    type: number
    sql: ${TABLE}.email_second_delay_times ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: send_email_status {
    type: number
    sql: ${TABLE}.send_email_status ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: times {
    type: number
    sql: ${TABLE}.times ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
