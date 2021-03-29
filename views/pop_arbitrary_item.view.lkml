###  Period over Period Method 6: Compare two arbitrary date ranges

# Like Method 5, but allowing arbitrary definition of the 'current' period
# provides functionality like Google Analytics, which allows you to compare two arbitrary date ranges


include: "*.view.lkml"

view: pop_arbitrary_item {
  extends: [sales_flat_order_item]


## ------------------ USER FILTERS  ------------------ ##

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
    sql: DATEDIFF('day',  {% date_start first_period_filter %}, ${created_date}) ;;
  }

  dimension: days_from_start_second {
    view_label: "_PoP"
    hidden: yes
    type: number
    sql: DATEDIFF('day',  {% date_start second_period_filter %}, ${created_date}) ;;
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
            WHEN {% condition first_period_filter %}${created_raw} {% endcondition %}
            THEN 'First Period'
            WHEN {% condition second_period_filter %}${created_raw} {% endcondition %}
            THEN 'Second Period'
            END ;;
  }

## Filtered measures

  measure: current_period_item_qty {
    view_label: "_PoP"
    type: count_distinct
    sql: ${item_id} ;;
    filters: [period_selected: "First Period"]
  }

  measure: previous_period_item_qty {
    view_label: "_PoP"
    type: count_distinct
    sql: ${item_id} ;;
    filters: [period_selected: "Second Period"]
  }

  measure: qty_pop_change {
    view_label: "_PoP"
    label: "Total qty period-over-period % change"
    type: number
    sql: (1.0 * ${current_period_item_qty} / NULLIF(${previous_period_item_qty} ,0)) - 1 ;;
    value_format_name: percent_2
  }

  dimension_group: created {hidden: yes}
  dimension: ytd_only {hidden:yes}
  dimension: mtd_only {hidden:yes}
  dimension: wtd_only {hidden:yes}
}

# ---------- EXPLORE ---------- ##

explore: pop_arbitrary_item {
  label: "sales_flat_order_item: Compare two arbitrary date ranges"
  always_filter: {
    filters: [first_period_filter: "7 days",second_period_filter: "7 days",period_selected:"-NULL"]
  }
}
