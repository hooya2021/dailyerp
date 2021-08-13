view: permission_block {
  sql_table_name: `costway_com.permission_block`
    ;;

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_allowed {
    type: number
    sql: ${TABLE}.is_allowed ;;
  }

  measure: count {
    type: count
    drill_fields: [block_name, hostname]
  }
}
