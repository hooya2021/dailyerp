view: core_flag {
  sql_table_name: `costway_com.core_flag`
    ;;

  dimension: flag_code {
    type: string
    sql: ${TABLE}.flag_code ;;
  }

  dimension: flag_data {
    type: string
    sql: ${TABLE}.flag_data ;;
  }

  dimension: flag_id {
    type: number
    sql: ${TABLE}.flag_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
