view: room_style {
  sql_table_name: `costway_com.room_style`
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

  dimension: cssclass {
    type: string
    sql: ${TABLE}.cssclass ;;
  }

  dimension: enable {
    type: number
    sql: ${TABLE}.enable ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: room_id {
    type: number
    sql: ${TABLE}.room_id ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, name]
  }
}
