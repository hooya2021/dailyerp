view: customer_group {
  sql_table_name: `costway_com.customer_group`
    ;;
  drill_fields: [customer_group_id]

  dimension: customer_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: customer_group_code {
    type: string
    sql: ${TABLE}.customer_group_code ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: tax_class_id {
    type: number
    sql: ${TABLE}.tax_class_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_group_id,
      hostname,
      catalog_product_entity_group_price.count,
      catalog_product_entity_point_price.count,
      catalog_product_entity_tier_price.count,
      catalog_product_index_price.count,
      catalog_product_index_price_idx.count,
      catalog_product_index_price_tmp.count,
      catalog_product_index_price_bundle_tmp.count,
      sales_flat_order.count,
      sales_flat_quote.count,
      salesrule_customer_group.count,
      salesrule_product_attribute.count
    ]
  }
}
