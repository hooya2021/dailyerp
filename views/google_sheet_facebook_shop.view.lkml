view: google_sheet_facebook_shop {
  sql_table_name: `alidbtogcp.google_sheet.google_sheet_facebook_shop`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: date {
    type: time
    description: "%E4Y/%m/%d"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: sales_total {
    type: number
    sql: ${TABLE}.sales_Total ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
