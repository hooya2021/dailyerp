view: catalog_product_index_price_bundle_tmp {
  sql_table_name: `costway_com.catalog_product_index_price_bundle_tmp`
    ;;

  dimension: base_group_price {
    type: number
    sql: ${TABLE}.base_group_price ;;
  }

  dimension: base_tier {
    type: number
    sql: ${TABLE}.base_tier ;;
  }

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: group_price {
    type: number
    sql: ${TABLE}.group_price ;;
  }

  dimension: group_price_percent {
    type: number
    sql: ${TABLE}.group_price_percent ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: max_price {
    type: number
    sql: ${TABLE}.max_price ;;
  }

  dimension: min_price {
    type: number
    sql: ${TABLE}.min_price ;;
  }

  dimension: orig_price {
    type: number
    sql: ${TABLE}.orig_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_type {
    type: number
    sql: ${TABLE}.price_type ;;
  }

  dimension: special_price {
    type: number
    sql: ${TABLE}.special_price ;;
  }

  dimension: tax_class_id {
    type: number
    sql: ${TABLE}.tax_class_id ;;
  }

  dimension: tier_percent {
    type: number
    sql: ${TABLE}.tier_percent ;;
  }

  dimension: tier_price {
    type: number
    sql: ${TABLE}.tier_price ;;
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
