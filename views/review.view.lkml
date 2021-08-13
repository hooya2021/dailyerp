view: review {
  sql_table_name: `costway_com.review`
    ;;
  drill_fields: [review_id]

  dimension: review_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.review_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_pk_value {
    type: number
    sql: ${TABLE}.entity_pk_value ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      review_id,
      hostname,
      rating_option_vote.count,
      review_detail.count,
      review_image.count,
      review_store.count
    ]
  }
}
