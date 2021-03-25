view: rpc_rule_equipment {
  sql_table_name: `costway_com.rpc_rule_equipment`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: device_uuid {
    type: string
    sql: ${TABLE}.device_uuid ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: salesrule_id {
    type: number
    sql: ${TABLE}.salesrule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
