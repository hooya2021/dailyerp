view: admin_rule {
  sql_table_name: `costway_com.admin_rule`
    ;;

  dimension: assert_id {
    type: number
    sql: ${TABLE}.assert_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: permission {
    type: string
    sql: ${TABLE}.permission ;;
  }

  dimension: privileges {
    type: string
    sql: ${TABLE}.privileges ;;
  }

  dimension: resource_id {
    type: string
    sql: ${TABLE}.resource_id ;;
  }

  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }

  dimension: role_type {
    type: string
    sql: ${TABLE}.role_type ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
