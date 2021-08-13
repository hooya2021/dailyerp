view: tax_calculation {
  sql_table_name: `costway_com.tax_calculation`
    ;;
  drill_fields: [tax_calculation_id]

  dimension: tax_calculation_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_id ;;
  }

  dimension: customer_tax_class_id {
    type: number
    sql: ${TABLE}.customer_tax_class_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: product_tax_class_id {
    type: number
    sql: ${TABLE}.product_tax_class_id ;;
  }

  dimension: tax_calculation_rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rate_id ;;
  }

  dimension: tax_calculation_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      tax_calculation_id,
      hostname,
      tax_calculation_rule.hostname,
      tax_calculation_rule.tax_calculation_rule_id,
      tax_calculation_rate.hostname,
      tax_calculation_rate.tax_calculation_rate_id
    ]
  }
}
