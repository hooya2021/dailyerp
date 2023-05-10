view: facebook_ads {
  sql_table_name: `alidbtogcp.google_sheet.google_sheet_facebook_ads`
    ;;

  dimension: amount_spent {
    type: number
    sql: ${TABLE}.amount_spent ;;
  }

  dimension: other_cost{
    type: number
    sql: ${TABLE}.other_cost ;;
  }

  dimension: aov {
    type: string
    sql: ${TABLE}.aov ;;
  }

  dimension: av_cpc {
    type: string
    sql: ${TABLE}.av_cpc ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: cos {
    type: string
    sql: ${TABLE}.cos ;;
  }

  dimension: cr {
    type: string
    sql: ${TABLE}.cr ;;
  }

  dimension: ctr {
    type: string
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

  dimension: website_purchases {
    type: number
    sql: ${TABLE}.website_purchases ;;
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
