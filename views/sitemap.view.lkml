view: sitemap {
  sql_table_name: `costway_com.sitemap`
    ;;
  drill_fields: [sitemap_id]

  dimension: sitemap_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.sitemap_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: sitemap_filename {
    type: string
    sql: ${TABLE}.sitemap_filename ;;
  }

  dimension: sitemap_path {
    type: string
    sql: ${TABLE}.sitemap_path ;;
  }

  dimension_group: sitemap {
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
    sql: ${TABLE}.sitemap_time ;;
  }

  dimension: sitemap_type {
    type: string
    sql: ${TABLE}.sitemap_type ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sitemap_id, hostname, sitemap_filename]
  }
}
