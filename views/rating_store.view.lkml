view: rating_store {
  sql_table_name: `costway_com.rating_store`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rating_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, rating.hostname, rating.rating_id]
  }
}
