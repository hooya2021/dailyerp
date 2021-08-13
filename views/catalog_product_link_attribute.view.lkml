view: catalog_product_link_attribute {
  sql_table_name: `costway_com.catalog_product_link_attribute`
    ;;

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  dimension: product_link_attribute_code {
    type: string
    sql: ${TABLE}.product_link_attribute_code ;;
  }

  dimension: product_link_attribute_id {
    type: number
    sql: ${TABLE}.product_link_attribute_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
