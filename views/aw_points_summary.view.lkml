view: aw_points_summary {
  sql_table_name: `costway_com.aw_points_summary`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: balance_update_notification {
    type: number
    sql: ${TABLE}.balance_update_notification ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: last_birthday {
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
    sql: ${TABLE}.last_birthday ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: points_expiration_notification {
    type: number
    sql: ${TABLE}.points_expiration_notification ;;
  }

  dimension: points_for_registration_granted {
    type: number
    sql: ${TABLE}.points_for_registration_granted ;;
  }

  dimension: points_for_subscription_granted {
    type: number
    sql: ${TABLE}.points_for_subscription_granted ;;
  }

  dimension: points_for_tags_granted {
    type: string
    sql: ${TABLE}.points_for_tags_granted ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
