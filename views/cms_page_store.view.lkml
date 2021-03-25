view: cms_page_store {
  sql_table_name: `costway_com.cms_page_store`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
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
