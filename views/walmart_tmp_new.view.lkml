view: walmart_tmp_new {
  sql_table_name: `costway_com.walmart_tmp_new`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_send {
    type: number
    sql: ${TABLE}.is_send ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: track_num {
    type: string
    sql: ${TABLE}.track_num ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, customer_name]
  }
}
