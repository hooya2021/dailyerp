view: salesrule_customer_group {
  sql_table_name: `costway_com.salesrule_customer_group`
    ;;

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, customer_group.hostname, customer_group.customer_group_id]
  }
}
