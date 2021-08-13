view: importexport_importdata {
  sql_table_name: `costway_com.importexport_importdata`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: behavior {
    type: string
    sql: ${TABLE}.behavior ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
