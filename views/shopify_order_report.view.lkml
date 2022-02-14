view: shopify_order_report {
  sql_table_name: `alidbtogcp.costmin.shopify_order_report`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date_time ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.run_time ;;
  }

  dimension: sales_total {
    type: number
    sql: ${TABLE}.sales_total ;;
  }

  dimension: week_time {
    type: string
    sql: ${TABLE}.week_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
