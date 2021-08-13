view: review_status {
  sql_table_name: `costway_com.review_status`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.status_code ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
