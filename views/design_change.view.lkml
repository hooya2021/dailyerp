view: design_change {
  sql_table_name: `costway_com.design_change`
    ;;
  drill_fields: [design_change_id]

  dimension: design_change_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.design_change_id ;;
  }

  dimension_group: date_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_from ;;
  }

  dimension_group: date_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_to ;;
  }

  dimension: design {
    type: string
    sql: ${TABLE}.design ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [design_change_id, hostname]
  }
}
