view: report_order {
  sql_table_name: `alidbtogcp.costmin.report_order`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: drop_amount {
    type: number
    sql: ${TABLE}.drop_amount ;;
  }

  dimension: drop_order {
    type: number
    sql: ${TABLE}.drop_order ;;
  }

  dimension: drop_qty {
    type: number
    sql: ${TABLE}.drop_qty ;;
  }

  dimension: general_amount {
    type: number
    sql: ${TABLE}.general_amount ;;
  }

  dimension: general_order {
    type: number
    sql: ${TABLE}.general_order ;;
  }

  dimension: general_qty {
    type: number
    sql: ${TABLE}.general_qty ;;
  }

  dimension: report_time {
    type: string
    sql: ${TABLE}.report_time ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: timestamp(parse_date('%Y-%m-%d',${TABLE}.report_time)) ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
