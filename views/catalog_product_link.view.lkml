view: catalog_product_link {
  sql_table_name: `costway_com.catalog_product_link`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  dimension: linked_product_id {
    type: number
    sql: ${TABLE}.linked_product_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
