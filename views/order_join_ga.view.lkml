view: sql_runner_query {
  derived_table: {
    sql: select
      a.entity_id,
      a.status,
      a.total_paid,
      a.created_at,
      b.name,
      c.traffic_source.source
      from `costway_com.sales_flat_order` a
      left join `costway_com.sales_flat_order_item` b on a.entity_id=b.order_id
      left join `analytics_250456953.events_20210310` c on c.ecommerce.transaction_id=a.increment_id
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: Turnover {
    type: sum
    sql: ${total_paid} ;;
    value_format_name: decimal_2
  }

  measure: Turnover_2 {
    type: number
    sql: round(${Turnover},2) ;;
    value_format_name: decimal_2
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_paid {
    type: number
    sql: ${TABLE}.total_paid ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  set: detail {
    fields: [
      entity_id,
      status,
      total_paid,
      created_at_time,
      name,
      source
    ]
  }
}
