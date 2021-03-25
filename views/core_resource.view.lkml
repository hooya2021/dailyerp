view: core_resource {
  sql_table_name: `costway_com.core_resource`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: data_version {
    type: string
    sql: ${TABLE}.data_version ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
