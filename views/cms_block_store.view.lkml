view: cms_block_store {
  sql_table_name: `costway_com.cms_block_store`
    ;;

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
