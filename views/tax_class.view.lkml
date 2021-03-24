view: tax_class {
  sql_table_name: `costway_com.tax_class`
    ;;

  dimension: class_id {
    type: number
    sql: ${TABLE}.class_id ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.class_name ;;
  }

  dimension: class_type {
    type: string
    sql: ${TABLE}.class_type ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: op_avatax_code {
    type: string
    sql: ${TABLE}.op_avatax_code ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, class_name]
  }
}
