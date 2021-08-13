view: api_role {
  sql_table_name: `costway_com.api_role`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: role_type {
    type: string
    sql: ${TABLE}.role_type ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: tree_level {
    type: number
    sql: ${TABLE}.tree_level ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [role_name, hostname]
  }
}
