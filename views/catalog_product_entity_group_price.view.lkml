view: catalog_product_entity_group_price {
  sql_table_name: `costway_com.catalog_product_entity_group_price`
    ;;

  dimension: all_groups {
    type: number
    sql: ${TABLE}.all_groups ;;
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

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
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
