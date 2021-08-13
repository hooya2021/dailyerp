view: unallowable_sku {
  sql_table_name: `costway_com.unallowable_sku`
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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: mobile_sku {
    type: string
    sql: ${TABLE}.mobile_sku ;;
  }

  dimension: pc_sku {
    type: string
    sql: ${TABLE}.pc_sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
