view: catalog_product_entity_media_gallery_value {
  sql_table_name: `costway_com.catalog_product_entity_media_gallery_value`
    ;;

  dimension: disabled {
    type: number
    sql: ${TABLE}.disabled ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
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
