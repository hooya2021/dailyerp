view: m_feedexport_rule {
  sql_table_name: `costway_com.m_feedexport_rule`
    ;;

  dimension: actions_serialized {
    type: string
    sql: ${TABLE}.actions_serialized ;;
  }

  dimension: conditions_serialized {
    type: string
    sql: ${TABLE}.conditions_serialized ;;
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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
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
