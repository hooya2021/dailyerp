view: google_order {
  sql_table_name: `alidbtogcp.costmin.google_order`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: deliver_by_date {
    type: string
    sql: ${TABLE}.deliver_by_date ;;
  }

  dimension: down_time {
    type: string
    sql: ${TABLE}.down_time ;;
  }

  dimension: google_id {
    type: string
    sql: ${TABLE}.google_id ;;
  }

  dimension: google_items_id {
    type: string
    sql: ${TABLE}.google_items_id ;;
  }

  dimension: google_product_id {
    type: string
    sql: ${TABLE}.google_product_id ;;
  }

  dimension: grand_total {
    type: number
    sql: ${TABLE}.grand_total ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: manger {
    type: string
    sql: ${TABLE}.manger ;;
  }

  dimension: mark {
    type: string
    sql: ${TABLE}.mark ;;
  }

  dimension: order_discount {
    type: number
    sql: ${TABLE}.order_discount ;;
  }

  dimension: orderqty {
    type: number
    sql: ${TABLE}.orderqty ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: placeorder {
    type: string
    sql: ${TABLE}.placeorder ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: ship_by_date {
    type: string
    sql: ${TABLE}.ship_by_date ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:cast(${TABLE}.ship_by_date as timestamp) ;;
  }
  dimension: shipping {
    type: string
    sql: ${TABLE}.shipping ;;
  }

  dimension: shipping_method {
    type: string
    sql: ${TABLE}.shipping_method ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_discount {
    type: string
    sql: ${TABLE}.sku_discount ;;
  }

  dimension: sku_qty {
    type: string
    sql: ${TABLE}.sku_qty ;;
  }

  dimension: sku_tax {
    type: string
    sql: ${TABLE}.sku_tax ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: track_admin {
    type: string
    sql: ${TABLE}.track_admin ;;
  }

  dimension: track_number {
    type: string
    sql: ${TABLE}.track_number ;;
  }

  dimension: track_time {
    type: string
    sql: ${TABLE}.track_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
