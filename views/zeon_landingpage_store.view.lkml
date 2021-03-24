view: zeon_landingpage_store {
  sql_table_name: `costway_com.zeon_landingpage_store`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: landingpage_id {
    type: number
    sql: ${TABLE}.landingpage_id ;;
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
