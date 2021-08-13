view: customer_form_attribute {
  sql_table_name: `costway_com.customer_form_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: form_code {
    type: string
    sql: ${TABLE}.form_code ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
