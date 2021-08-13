view: catalog_category_product {
  sql_table_name: `costway_com.catalog_category_product`
    ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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
