view: poll_store {
  sql_table_name: `costway_com.poll_store`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: poll_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.poll_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, poll.hostname, poll.poll_id]
  }
}
