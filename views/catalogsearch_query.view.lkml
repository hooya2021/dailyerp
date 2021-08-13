view: catalogsearch_query {
  sql_table_name: `costway_com.catalogsearch_query`
    ;;

  dimension: display_in_terms {
    type: number
    sql: ${TABLE}.display_in_terms ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }

  dimension: num_results {
    type: number
    sql: ${TABLE}.num_results ;;
  }

  dimension: popularity {
    type: number
    sql: ${TABLE}.popularity ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}.query_id ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.query_text ;;
  }

  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: synonym_for {
    type: string
    sql: ${TABLE}.synonym_for ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
