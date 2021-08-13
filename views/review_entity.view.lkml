view: review_entity {
  sql_table_name: `costway_com.review_entity`
    ;;

  dimension: entity_code {
    type: string
    sql: ${TABLE}.entity_code ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
