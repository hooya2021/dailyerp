view: bannerslider_report {
  sql_table_name: `costway_com.bannerslider_report`
    ;;

  dimension: banner_id {
    type: number
    sql: ${TABLE}.banner_id ;;
  }

  dimension: bannerslider_id {
    type: number
    sql: ${TABLE}.bannerslider_id ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension_group: date_click {
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
    sql: ${TABLE}.date_click ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: impmode {
    type: number
    sql: ${TABLE}.impmode ;;
  }

  dimension: report_id {
    type: number
    sql: ${TABLE}.report_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
