view: aw_points_exchange_order {
  sql_table_name: `costway_com.aw_points_exchange_order`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: point {
    type: number
    sql: ${TABLE}.point ;;
  }

  measure: point_order_count {
    type: count
    # sql: ${point} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
