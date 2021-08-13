view: salesrule_product_attribute {
  sql_table_name: `costway_com.salesrule_product_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

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

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, customer_group.hostname, customer_group.customer_group_id]
  }
}
