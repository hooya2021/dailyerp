view: aw_points_rate {
  sql_table_name: `costway_com.aw_points_rate`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_group_ids {
    type: string
    sql: ${TABLE}.customer_group_ids ;;
  }

  dimension: direction {
    type: number
    sql: ${TABLE}.direction ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: money {
    type: string
    sql: ${TABLE}.money ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: website_ids {
    type: string
    sql: ${TABLE}.website_ids ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
