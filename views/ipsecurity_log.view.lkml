view: ipsecurity_log {
  sql_table_name: `costway_com.ipsecurity_log`
    ;;

  dimension: blocked_from {
    type: string
    sql: ${TABLE}.blocked_from ;;
  }

  dimension: blocked_ip {
    type: string
    sql: ${TABLE}.blocked_ip ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.create_time ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: last_block_rule {
    type: string
    sql: ${TABLE}.last_block_rule ;;
  }

  dimension: logid {
    type: number
    value_format_name: id
    sql: ${TABLE}.logid ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
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
