view: poll_answer {
  sql_table_name: `costway_com.poll_answer`
    ;;

  dimension: answer_id {
    type: number
    sql: ${TABLE}.answer_id ;;
  }

  dimension: answer_order {
    type: number
    sql: ${TABLE}.answer_order ;;
  }

  dimension: answer_title {
    type: string
    sql: ${TABLE}.answer_title ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: poll_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.poll_id ;;
  }

  dimension: votes_count {
    type: number
    sql: ${TABLE}.votes_count ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, poll.hostname, poll.poll_id]
  }
}
