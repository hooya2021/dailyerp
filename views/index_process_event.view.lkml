view: index_process_event {
  sql_table_name: `costway_com.index_process_event`
    ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: process_id {
    type: number
    sql: ${TABLE}.process_id ;;
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
