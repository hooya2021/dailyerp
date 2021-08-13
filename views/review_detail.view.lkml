view: review_detail {
  sql_table_name: `costway_com.review_detail`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
  }

  dimension: detail_id {
    type: number
    sql: ${TABLE}.detail_id ;;
  }

  dimension: helpfulnums {
    type: number
    sql: ${TABLE}.helpfulnums ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension: reviewimage {
    type: string
    sql: ${TABLE}.reviewimage ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, nickname, review.review_id, review.hostname]
  }
}
