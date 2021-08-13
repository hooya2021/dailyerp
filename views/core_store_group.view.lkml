view: core_store_group {
  sql_table_name: `costway_com.core_store_group`
    ;;

  dimension: default_store_id {
    type: number
    sql: ${TABLE}.default_store_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: root_category_id {
    type: number
    sql: ${TABLE}.root_category_id ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
