view: catalogsearch_fulltext {
  sql_table_name: `costway_com.catalogsearch_fulltext`
    ;;

  dimension: data_index {
    type: string
    sql: ${TABLE}.data_index ;;
  }

  dimension: fulltext_id {
    type: number
    sql: ${TABLE}.fulltext_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
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
