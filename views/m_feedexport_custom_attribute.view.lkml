view: m_feedexport_custom_attribute {
  sql_table_name: `costway_com.m_feedexport_custom_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: conditions_serialized {
    type: string
    sql: ${TABLE}.conditions_serialized ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
