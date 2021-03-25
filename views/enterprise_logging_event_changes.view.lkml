view: enterprise_logging_event_changes {
  sql_table_name: `costway_com.enterprise_logging_event_changes`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: original_data {
    type: string
    sql: ${TABLE}.original_data ;;
  }

  dimension: result_data {
    type: string
    sql: ${TABLE}.result_data ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, source_name]
  }
}
