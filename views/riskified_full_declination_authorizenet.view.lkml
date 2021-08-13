view: riskified_full_declination_authorizenet {
  sql_table_name: `costway_com.riskified_full_declination_authorizenet`
    ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_voided {
    type: number
    sql: ${TABLE}.is_voided ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
