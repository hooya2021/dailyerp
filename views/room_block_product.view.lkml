view: room_block_product {
  sql_table_name: `costway_com.room_block_product`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
