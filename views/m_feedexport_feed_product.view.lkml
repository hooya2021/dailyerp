view: m_feedexport_feed_product {
  sql_table_name: `costway_com.m_feedexport_feed_product`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: feed_id {
    type: number
    sql: ${TABLE}.feed_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_new {
    type: number
    sql: ${TABLE}.is_new ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
