view: wishlist_item_stock_alert {
  sql_table_name: `costway_com.wishlist_item_stock_alert`
    ;;
  drill_fields: [wishlist_item_stock_alert_id]

  dimension: wishlist_item_stock_alert_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.wishlist_item_stock_alert_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: wishlist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wishlist_id ;;
  }

  measure: count {
    type: count
    drill_fields: [wishlist_item_stock_alert_id, hostname, wishlist.hostname, wishlist.wishlist_id]
  }
}
