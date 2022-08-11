view: google_ads_cost {
  sql_table_name: `alidbtogcp.google_sheet.google_ads_cost`
    ;;

  dimension: app {
    type: number
    sql: ${TABLE}.app ;;
  }

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
    sql: ${TABLE}.date ;;
  }

  dimension: local {
    type: number
    sql: ${TABLE}.local ;;
  }

  dimension: pmax {
    type: number
    sql: ${TABLE}.pmax ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
