view: catalog_product_link_type {
  sql_table_name: `costway_com.catalog_product_link_type`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
