view: aw_points_warn_email {
  sql_table_name: `costway_com.aw_points_warn_email`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
