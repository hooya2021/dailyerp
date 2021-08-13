view: catalog_product_relation {
  sql_table_name: `costway_com.catalog_product_relation`
    ;;

  dimension: child_id {
    type: number
    sql: ${TABLE}.child_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
