view: rpc_banner {
  sql_table_name: `costway_com.rpc_banner`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: banner_type {
    type: string
    sql: ${TABLE}.banner_type ;;
  }

  dimension: banner_value {
    type: string
    sql: ${TABLE}.banner_value ;;
  }

  dimension: display_platform {
    type: string
    sql: ${TABLE}.display_platform ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sorts {
    type: number
    sql: ${TABLE}.sorts ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, name]
  }
}
