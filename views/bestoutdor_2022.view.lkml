view: bestoutdor_2022 {
  sql_table_name: `alidbtogcp.google_sheet.Bestoutdor_2022`
    ;;

  dimension_group: date {
    type: time
    description: "%E4Y-%m-%d"
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
    sql: ${TABLE}.Date ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.Orders ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: sales_total {
    type: number
    sql: ${TABLE}.Sales_total ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.Weekday ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
