view: riskified_full_declination_sent {
  sql_table_name: `costway_com.riskified_full_declination_sent`
    ;;

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
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
