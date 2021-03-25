view: core_variable_value {
  sql_table_name: `costway_com.core_variable_value`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: html_value {
    type: string
    sql: ${TABLE}.html_value ;;
  }

  dimension: plain_value {
    type: string
    sql: ${TABLE}.plain_value ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  dimension: variable_id {
    type: number
    sql: ${TABLE}.variable_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
