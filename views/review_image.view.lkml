view: review_image {
  sql_table_name: `costway_com.review_image`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_image {
    type: string
    sql: ${TABLE}.review_image ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, review.review_id, review.hostname]
  }
}
