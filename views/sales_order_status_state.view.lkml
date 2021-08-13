view: sales_order_status_state {
  sql_table_name: `costway_com.sales_order_status_state`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
