view: rpc_uuid_relation {
  sql_table_name: `costway_com.rpc_uuid_relation`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dtype {
    type: string
    sql: ${TABLE}.dtype ;;
  }

  dimension: dvalue {
    type: number
    sql: ${TABLE}.dvalue ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
