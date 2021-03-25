view: core_website {
  sql_table_name: `costway_com.core_website`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: default_group_id {
    type: number
    sql: ${TABLE}.default_group_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
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
