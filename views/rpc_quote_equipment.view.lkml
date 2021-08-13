view: rpc_quote_equipment {
  sql_table_name: `costway_com.rpc_quote_equipment`
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

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
