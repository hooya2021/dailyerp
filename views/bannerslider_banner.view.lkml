view: bannerslider_banner {
  sql_table_name: `costway_com.bannerslider_banner`
    ;;

  dimension: banner_id {
    type: number
    sql: ${TABLE}.banner_id ;;
  }

  dimension: bannerslider_id {
    type: number
    sql: ${TABLE}.bannerslider_id ;;
  }

  dimension: click_url {
    type: string
    sql: ${TABLE}.click_url ;;
  }

  dimension: clicktotal {
    type: number
    sql: ${TABLE}.clicktotal ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_time ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: image_alt {
    type: string
    sql: ${TABLE}.image_alt ;;
  }

  dimension: imptotal {
    type: number
    sql: ${TABLE}.imptotal ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_banner {
    type: number
    sql: ${TABLE}.order_banner ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tartget {
    type: number
    sql: ${TABLE}.tartget ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
