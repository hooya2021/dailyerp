view: log_url_info {
  sql_table_name: `costway_com.log_url_info`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: url_id {
    type: number
    sql: ${TABLE}.url_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
