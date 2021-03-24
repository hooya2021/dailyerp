view: aw_points_dropship {
  sql_table_name: `costway_com.aw_points_dropship`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auditing {
    type: number
    sql: ${TABLE}.auditing ;;
  }

  dimension: auditing_date {
    type: number
    sql: ${TABLE}.auditing_date ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: send_certificate {
    type: number
    sql: ${TABLE}.send_certificate ;;
  }

  dimension: shop_link {
    type: string
    sql: ${TABLE}.shop_link ;;
  }

  dimension: shop_name {
    type: string
    sql: ${TABLE}.shop_name ;;
  }

  dimension_group: shop_open {
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
    sql: ${TABLE}.shop_open_date ;;
  }

  dimension: shop_status {
    type: number
    sql: ${TABLE}.shop_status ;;
  }

  dimension: shop_type {
    type: string
    sql: ${TABLE}.shop_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, shop_name]
  }
}
