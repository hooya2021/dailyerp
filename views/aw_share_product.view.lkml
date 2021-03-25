view: aw_share_product {
  sql_table_name: `costway_com.aw_share_product`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: share_num {
    type: number
    sql: ${TABLE}.share_num ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
