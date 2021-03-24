view: catalog_product_super_attribute {
  sql_table_name: `costway_com.catalog_product_super_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
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

  dimension: product_super_attribute_id {
    type: number
    sql: ${TABLE}.product_super_attribute_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
