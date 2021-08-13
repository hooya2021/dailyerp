view: review_entity_summary {
  sql_table_name: `costway_com.review_entity_summary`
    ;;

  dimension: entity_pk_value {
    type: number
    sql: ${TABLE}.entity_pk_value ;;
  }

  dimension: entity_type {
    type: number
    sql: ${TABLE}.entity_type ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: primary_id {
    type: number
    sql: ${TABLE}.primary_id ;;
  }

  dimension: rating_summary {
    type: number
    sql: ${TABLE}.rating_summary ;;
  }

  dimension: reviews_count {
    type: number
    sql: ${TABLE}.reviews_count ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
