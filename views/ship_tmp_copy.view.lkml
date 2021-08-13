view: ship_tmp_copy {
  sql_table_name: `costway_com.ship_tmp_copy`
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
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_sn {
    type: number
    sql: ${TABLE}.order_sn ;;
  }

  dimension: track_num {
    type: string
    sql: ${TABLE}.track_num ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
