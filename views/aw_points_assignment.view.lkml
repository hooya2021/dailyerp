view: aw_points_assignment {
  sql_table_name: `costway_com.aw_points_assignment`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: points_type {
    type: string
    sql: ${TABLE}.points_type ;;
  }

  measure: point_type_count {
    type: count
    # sql: ${points_type} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
