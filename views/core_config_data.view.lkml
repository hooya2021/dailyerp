view: core_config_data {
  sql_table_name: `costway_com.core_config_data`
    ;;

  dimension: config_id {
    type: number
    sql: ${TABLE}.config_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: scope_id {
    type: number
    sql: ${TABLE}.scope_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
