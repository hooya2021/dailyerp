view: m_feedexport_rule_feed {
  sql_table_name: `costway_com.m_feedexport_rule_feed`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: feed_id {
    type: number
    sql: ${TABLE}.feed_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
