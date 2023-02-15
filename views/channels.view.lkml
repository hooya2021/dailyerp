view: channels {
  derived_table: {
    sql: select weekday as weekday,
      cast(date as timestamp) as date,
      impression as impression,
      clicks as clicks,
      bounce_rate as BounceRate,
      conversions as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "Bing/CPC" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_bing_cpc`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      clicks as clicks,
      bounce_rate as BounceRate,
       conversions as conversions,
       revenue as Revenue,
       cost as Cost,
       NULL AS conversionL,
       null as revenueL,
       null as conversion,
       null as revenues,
       null as sessions,
       null as coupon_used_time,
      "Connexity" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_connexity`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      conversions as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "Rakuten_affiliate" as Channel,
      real_revenue as real_revenue
      from `alidbtogcp.google_sheet.Rakuten_Affiliate`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      impression as impression,
      clicks as clicks,
      null as BounceRate,
      conversion as conversions,
      revenue as Revenue,
      cost as Cost,
      conversion_l as conversionL,
      revenue_l as revenueL,
      conversions as conversion,
      revenues as revenues,
      null as sessions,
      null as coupon_used_time,
      "Criteo" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_criteo`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      null as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      sessions as sessions,
      coupon_used_time as coupon_used_time,
      "Bradsdeal" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_bradsdeal`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      null as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      sessions as sessions,
      coupon_used_time as coupon_used_time,
      "Slickdeals" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_slickdeals`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      null as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      sessions as sessions,
      coupon_used_time as coupon_used_time,
      "DealWiki" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_ dea_wiki`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      null as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      sessions as sessions,
      coupon_used_time as coupon_used_time,
      "DealNews" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_ deal_news`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      null as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      sessions as sessions,
      coupon_used_time as coupon_used_time,
      "iHotOffer" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_ihot_offer`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      clicks as clicks,
      bounce_rate as BounceRate,
      conversions as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "Outbrain" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_outbrain`

     union all
     select weekday as weekday,
     cast(date as timestamp) as date,
     null as impression,
     null as clicks,
     null as BounceRate,
     conversions as conversions,
     revenue as Revenue,
     cost as Cost,
     NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "shareasale" as Channel,
      real_revenue as real_revenue
      from `alidbtogcp.google_sheet.ShareAsale `

      union all
     select weekday as weekday,
     cast(date as timestamp) as date,
     null as impression,
     click as clicks,
     bounce_rate as BounceRate,
     conversions as conversions,
     revenues as Revenue,
     cost as Cost,
     NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "pinterest" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.google_sheet_pinterest`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      clicks as clicks,
      bounce_rate as BounceRate,
       conversions as conversions,
       revenue as Revenue,
       cost as Cost,
       NULL AS conversionL,
       null as revenueL,
       null as conversion,
       null as revenues,
       null as sessions,
       null as coupon_used_time,
      "RTB House" as Channel,
      null as real_revenue
      from `alidbtogcp.google_sheet.RTB_HOUSE`

      union all
      select weekday as weekday,
      cast(date as timestamp) as date,
      null as impression,
      null as clicks,
      null as BounceRate,
      conversions as conversions,
      revenue as Revenue,
      cost as Cost,
      NULL AS conversionL,
      null as revenueL,
      null as conversion,
      null as revenues,
      null as sessions,
      null as coupon_used_time,
      "Impact" as Channel,
      real_revenue as real_revenue
      from `alidbtogcp.google_sheet.Impact_US`
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  dimension_group: date {
    type: time
    sql: ${TABLE}.date ;;
  }

  dimension: impression {
    type: number
    sql: ${TABLE}.impression ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.BounceRate ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: real_revenue {
    type: number
    sql: ${TABLE}.real_revenue ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: conversion_l {
    type: number
    sql: ${TABLE}.conversionL ;;
  }

  dimension: revenue_l {
    type: number
    sql: ${TABLE}.revenueL ;;
  }

  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;
  }

  dimension: revenues {
    type: number
    sql: ${TABLE}.revenues ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: coupon_used_time {
    type: number
    sql: ${TABLE}.coupon_used_time ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  set: detail {
    fields: [
      weekday,
      date_time,
      impression,
      clicks,
      bounce_rate,
      conversions,
      revenue,
      cost,
      conversion_l,
      revenue_l,
      conversion,
      revenues,
      sessions,
      coupon_used_time,
      channel
    ]
  }

 dimension: date {
  type: date
  sql: ${TABLE}.date ;;
}
dimension_group: created_at {
  type: time
  timeframes: [raw,date,week,month,year,day_of_week,day_of_month,day_of_year]
  sql: ${TABLE}.date ;;
}

}
