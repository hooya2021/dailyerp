view: room_block {
  sql_table_name: `costway_com.room_block`
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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: style_id {
    type: number
    sql: ${TABLE}.style_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, name]
  }
}
