view: customer_entity_datetime {
  sql_table_name: `costway_com.customer_entity_datetime`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: value {
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
    sql: ${TABLE}.value ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
