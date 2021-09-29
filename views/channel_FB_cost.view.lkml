view: channel_fb_cost {
    derived_table: {
      sql: select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'DealWiki' as Channel
              from `alidbtogcp.google_sheet.google_sheet_ dea_wiki`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'DealNews' as Channel
              from `alidbtogcp.google_sheet.google_sheet_ deal_news`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'BingCPC' as Channel
              from `alidbtogcp.google_sheet.google_sheet_bing_cpc`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'BradsDeal' as Channel
              from `alidbtogcp.google_sheet.google_sheet_bradsdeal`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'Connexity' as Channel
              from `alidbtogcp.google_sheet.google_sheet_connexity`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'Criteo' as Channel
              from `alidbtogcp.google_sheet.google_sheet_criteo`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(amount_spent) as Cost,
              'Facebook_ad' as Channel
              from `alidbtogcp.google_sheet.google_sheet_facebook_ads`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'ihotOffer' as Channel
              from `alidbtogcp.google_sheet.google_sheet_ihot_offer`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'Outbrain' as Channel
              from `alidbtogcp.google_sheet.google_sheet_outbrain`
              group by 1,3


              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'SlickDeals' as Channel
              from `alidbtogcp.google_sheet.google_sheet_slickdeals`
              group by 1,3

              union all
              select (cast(date as timestamp)) as Date,
              sum(cost) as Cost,
              'Rakuten' as Channel
              from `alidbtogcp.google_sheet.google_sheet_rakuten_affiliate`
              group by 1,3
               ;;
    }

    measure: count {
      view_label: "Channel Cost"
      type: count
      drill_fields: [detail*]
    }

    dimension_group: date {
      view_label: "Channel Cost"
      type: time
      sql: ${TABLE}.Date ;;
    }

    dimension: cost {
      view_label: "Channel Cost"
      type: number
      sql: ${TABLE}.Cost ;;
    }

    dimension: channel {
      view_label: "Channel Cost"
      type: string
      sql: ${TABLE}.Channel ;;
    }

    set: detail {
      fields: [date_time, cost, channel]
}
}
