view: aw_afp_blocks {
  sql_table_name: `costway_com.aw_afp_blocks`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: automation_data {
    type: string
    sql: ${TABLE}.automation_data ;;
  }

  dimension: automation_type {
    type: number
    sql: ${TABLE}.automation_type ;;
  }

  dimension: autoposition {
    type: number
    sql: ${TABLE}.autoposition ;;
  }

  dimension: block_id {
    type: string
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

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.store ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_data {
    type: string
    sql: ${TABLE}.type_data ;;
  }

  measure: count {
    type: count
    drill_fields: [id, block_name, hostname]
  }
}
