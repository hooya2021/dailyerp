view: cataloginventory_stock {
  sql_table_name: `costway_com.cataloginventory_stock`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: stock_id {
    type: number
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_name {
    type: string
    sql: ${TABLE}.stock_name ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, stock_name]
  }
}
