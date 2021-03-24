view: log_visitor_info {
  sql_table_name: `costway_com.log_visitor_info`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: http_accept_charset {
    type: string
    sql: ${TABLE}.http_accept_charset ;;
  }

  dimension: http_accept_language {
    type: string
    sql: ${TABLE}.http_accept_language ;;
  }

  dimension: http_referer {
    type: string
    sql: ${TABLE}.http_referer ;;
  }

  dimension: http_user_agent {
    type: string
    sql: ${TABLE}.http_user_agent ;;
  }

  dimension: remote_addr {
    type: number
    sql: ${TABLE}.remote_addr ;;
  }

  dimension: server_addr {
    type: number
    sql: ${TABLE}.server_addr ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
