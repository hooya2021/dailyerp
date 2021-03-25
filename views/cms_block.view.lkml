view: cms_block {
  sql_table_name: `costway_com.cms_block`
    ;;

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
