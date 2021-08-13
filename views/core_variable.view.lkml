view: core_variable {
  sql_table_name: `costway_com.core_variable`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: variable_id {
    type: number
    sql: ${TABLE}.variable_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
