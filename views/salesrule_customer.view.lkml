view: salesrule_customer {
  sql_table_name: `costway_com.salesrule_customer`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: rule_customer_id {
    type: number
    sql: ${TABLE}.rule_customer_id ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: times_used {
    type: number
    sql: ${TABLE}.times_used ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
