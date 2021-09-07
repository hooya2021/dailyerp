view: ca_bing_cpc {
  sql_table_name: `alidbtogcp.google_sheet_ca.ca_bing_cpc`
    ;;

  dimension: aov {
    type: string
    sql: ${TABLE}.aov ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounce_rate ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cos {
    type: string
    sql: ${TABLE}.cos ;;
  }

  dimension: costusd {
    type: number
    sql: ${TABLE}.costusd ;;
  }

  dimension: cr {
    type: string
    sql: ${TABLE}.cr ;;
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

  dimension: impression {
    type: number
    sql: ${TABLE}.impression ;;
  }

  dimension: revenueusd {
    type: number
    sql: ${TABLE}.revenueusd ;;
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
