view: aw_points_rule {
  sql_table_name: `costway_com.aw_points_rule`
    ;;

  dimension: conditions_serialized {
    type: string
    sql: ${TABLE}.conditions_serialized ;;
  }

  dimension: customer_group_ids {
    type: string
    sql: ${TABLE}.customer_group_ids ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: from {
    type: time
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
    sql: ${TABLE}.from_date ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: points_change {
    type: number
    sql: ${TABLE}.points_change ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: static_blocks_ids {
    type: string
    sql: ${TABLE}.static_blocks_ids ;;
  }

  dimension: stop_rules {
    type: number
    sql: ${TABLE}.stop_rules ;;
  }

  dimension_group: to {
    type: time
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
    sql: ${TABLE}.to_date ;;
  }

  dimension: website_ids {
    type: string
    sql: ${TABLE}.website_ids ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
