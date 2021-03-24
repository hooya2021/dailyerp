view: aw_points_transaction {
  sql_table_name: `costway_com.aw_points_transaction`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: balance_change {
    type: number
    sql: ${TABLE}.balance_change ;;
  }

  dimension: balance_change_spent {
    type: number
    sql: ${TABLE}.balance_change_spent ;;
  }

  dimension: balance_change_type {
    type: number
    sql: ${TABLE}.balance_change_type ;;
  }

  dimension: change_date {
    type: string
    sql: ${TABLE}.change_date ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: expiration_notification_sent {
    type: number
    sql: ${TABLE}.expiration_notification_sent ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_locked {
    type: number
    sql: ${TABLE}.is_locked ;;
  }

  dimension: lock_changed_date {
    type: string
    sql: ${TABLE}.lock_changed_date ;;
  }

  dimension: notice {
    type: string
    sql: ${TABLE}.notice ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: summary_id {
    type: number
    sql: ${TABLE}.summary_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, customer_name]
  }
}
