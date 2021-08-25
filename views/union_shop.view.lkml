view: union_shop {
  derived_table: {
  sql: select (cast(report_time as timestamp)) as created_at,
  SUM(drop_amount) as Revenus,
  sum(drop_qty) as Store_qty,
  sum(drop_order) as Orders,
  null as Cost,
  "全站订单" as store
  from `alidbtogcp.costmin.report_order`
  group by 1,6

  union all
  select (cast(report_time as timestamp)) as created_at,
  SUM(general_amount) as Revenus,
  sum(general_qty) as Store_qty,
  sum(general_order) as Orders,
  null as Cost,
  "散客订单" as store
  from `alidbtogcp.costmin.report_order`
  group by 1,6

  union all
  select (cast(ship_by_date as timestamp)) as created_at,
  sum(grand_total) as Revenue,
  sum(orderqty) as Store_qty,
  COUNT(DISTINCT google_id) as Orders,
  null as Cost,
  "costway-SA" as store
  from `alidbtogcp.costmin.google_order`
  group by 1,6

  union all
  select created_at as created_at,
  sum(grand_total) AS Revenue,
  sum(qty) as Store_qty,
  COUNT(DISTINCT increment_id) as Orders,
  null as Cost,
  store as store
  from `alidbtogcp.costmin.drop_shop_purchase`
  group by 1,6

  union all
  select (cast(date as timestamp)) as created_at,
  sum(sales_Total) AS Revenue,
  sum(qty) as Store_qty,
  sum(orders) as Orders,
  sum(cost) as Cost,
  "COSTWAY-FB" as store
  from `alidbtogcp.google_sheet.google_sheet_facebook_shop`
  group by 1,6

  union all
  select (cast(date as timestamp)) as created_at,
  sum(revenue) AS Revenue,
  sum(qty) as Store_qty,
  sum(orders) as Orders,
  null as Cost,
  "sharperImage" as store
  from `alidbtogcp.google_sheet.google_sheet_sharperImage`
  group by 1,6
  ;;
  }

  filter: first_period_filter {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    description: "Choose the first date range to compare against. This must be before the second period"
    type: date
  }

  filter: second_period_filter {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    description: "Choose the second date range to compare to. This must be after the first period"
    type: date
  }

## ------------------ HIDDEN HELPER DIMENSIONS  ------------------ ##

  dimension: days_from_start_first {
    view_label: "_PoP"
    hidden: yes
    type: number
    sql: DATEDIFF('day',  {% date_start first_period_filter %}, ${date_date}) ;;
  }

  dimension: days_from_start_second {
    view_label: "_PoP"
    hidden: yes
    type: number
    sql: DATEDIFF('day',  {% date_start second_period_filter %}, ${date_date}) ;;
  }

## ------------------ DIMENSIONS TO PLOT ------------------ ##

  dimension: days_from_first_period {
    view_label: "_PoP"
    description: "Select for Grouping (Rows)"
    group_label: "Arbitrary Period Comparisons"
    type: number
    sql:
        CASE
        WHEN ${days_from_start_second} >= 0
        THEN ${days_from_start_second}
        WHEN ${days_from_start_first} >= 0
        THEN ${days_from_start_first}
        END;;
  }


  dimension: period_selected {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    label: "First or second period"
    description: "Select for Comparison (Pivot)"
    type: string
    sql:
        CASE
            WHEN {% condition first_period_filter %}${date_raw} {% endcondition %}
            THEN 'First Period'
            WHEN {% condition second_period_filter %}${date_raw} {% endcondition %}
            THEN 'Second Period'
            END ;;
  }

#Filtered measures

measure: previous_period_revenues {
  view_label: "_PoP"
  type: sum
  sql: ${revenus} ;;
  filters: [period_selected: "First Period"]
}

measure: previous_period_orders {
  view_label: "_PoP"
  type: sum
  sql: ${orders} ;;
  filters: [period_selected: "First Period"]
}

measure: previous_period_store_qty {
  view_label: "_PoP"
  type: sum
  sql: ${store_qty} ;;
  filters: [period_selected: "First Period"]
}



  measure: current_period_revenues {
    view_label: "_PoP"
    type: sum
    sql: ${revenus} ;;
    filters: [period_selected: "Second Period"]
  }

  measure: current_period_orders {
    view_label: "_PoP"
    type: sum
    sql: ${orders} ;;
    filters: [period_selected: "Second Period"]
  }

  measure: current_period_store_qty {
    view_label: "_PoP"
    type: sum
    sql: ${store_qty} ;;
    filters: [period_selected: "Second Period"]
  }


  measure: count {
    type: count
    drill_fields: [detail*]
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
    sql:${TABLE}.created_at ;;
  }



  dimension: revenus {
    type: number
    sql: ${TABLE}.Revenus ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.Orders ;;
  }

  dimension: store_qty {
    type: number
    sql: ${TABLE}.Store_qty ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: store {
    case: {
      when: {
        sql: ${TABLE}.store="Costway-philip";;
        label: "Costway-Philip"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-Bath" ;;
        label: "Costway-Bath"
      }
      when: {
        sql: ${TABLE}.store="Costway-Emma" ;;
        label: "Costway-Emma"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-FB" or ${TABLE}.store="Costway-FB" ;;
        label: "COSTWAY-FB"
      }

      when: {
        sql: ${TABLE}.store="Costway-giveaway" or ${TABLE}.store="costway-giveaway" or ${TABLE}.store="Costway-giveaways";;
        label: "costway-giveaway"
      }

      when: {
        sql: ${TABLE}.store="COSTWAY-GZ" or ${TABLE}.store="Costway-GZ" or ${TABLE}.store="Costway-gz" or ${TABLE}.store="costway-GZ" or ${TABLE}.store="costway-gz";;
        label:"COSTWAY-GZ"
      }

      when:{
        sql: ${TABLE}.store="COSTWAY-GZLOWES" ;;
        label: "COSTWAY-GZLOWES"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-GZO" ;;
        label: "COSTWAY-GZO"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-GZOA" or ${TABLE}.store="Costway-GZOA" ;;
        label: "COSTWAY-GZOA"
      }
      when: {
        sql: ${TABLE}.store="Costway-Jandy" ;;
        label: "Costway-Jandy"
      }
      when: {
        sql: ${TABLE}.store="costway-Philip" or ${TABLE}.store="costway-philip";;
        label: "Costway-Philip"
      }

      when: {
        sql: ${TABLE}.store="costway-PhilipCA" ;;
        label: "Costway-PhilipCA"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-PhilipHD" ;;
        label: "Costway-PhilipHD"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-PhilipWE" ;;
        label: "Costway-PhilipWE"
      }
      when: {
        sql: ${TABLE}.store="Dropshop" or ${TABLE}.store="dropshop" ;;
        label: "DROPSHOP"
      }
      when: {
        sql: ${TABLE}.store="Topcraft-Stone" or ${TABLE}.store="Topcraft-stone" ;;
        label: "Topcraft-Stone"
      }
      when: {
        sql: ${TABLE}.store="Topcraft-WAYFAIR" or ${TABLE}.store="Topcraft-Wayfair" or ${TABLE}.store="Topcraft-wayfair" ;;
        label: "Topcraft-Wayfair"
      }
      when: {
        sql: ${TABLE}.store="Dropshop-HK" ;;
        label: "Dropshop-HK"
      }
      when: {
        sql: ${TABLE}.store="costway-SA" ;;
        label: "costway-SA"
      }

      when: {
        sql: ${TABLE}.store="sharperImage" ;;
        label: "sharperImage"
        }

      when: {
        sql: ${TABLE}.store="散客订单"  ;;
        label: "散客订单"
      }
      when: {
        sql: ${TABLE}.store="全站订单" ;;
        label: "全站订单"
      }
      else: "Other"
    }
    type: string
    sql: ${TABLE}.store ;;
  }

  set: detail {
    fields: [
      revenus,
      orders,
      store_qty,
      store
    ]
  }
}
