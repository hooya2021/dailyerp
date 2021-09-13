view: ca_facebooke_ads {
  sql_table_name: `alidbtogcp.google_sheet_ca.ca_facebooke_ads`
    ;;

  dimension: amount_spent_cad {
    type: number
    sql: ${TABLE}.amount_spent_cad ;;
  }

  dimension: amount_spent_usd {
    type: number
    sql: ${TABLE}.amount_spent_usd ;;
  }

  dimension: av_cpc {
    type: number
    sql: ${TABLE}.av_cpc ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cos {
    type: number
    sql: ${TABLE}.cos ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: website_purchases_conversion_value_cad {
    type: number
    sql: ${TABLE}.website_purchases_conversion_value_cad ;;
  }

  dimension: website_purchases_conversion_value_usd {
    type: number
    sql: ${TABLE}.website_purchases_conversion_value_usd ;;
  }

  dimension: websitepurchases {
    type: number
    sql: ${TABLE}.websitepurchases ;;
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
