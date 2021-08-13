view: m_feedexport_mapping_category {
  sql_table_name: `costway_com.m_feedexport_mapping_category`
    ;;

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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: mapping_id {
    type: number
    sql: ${TABLE}.mapping_id ;;
  }

  dimension: mapping_serialized {
    type: string
    sql: ${TABLE}.mapping_serialized ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
