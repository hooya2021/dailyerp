view: m_feedexport_feed {
  sql_table_name: `costway_com.m_feedexport_feed`
    ;;

  dimension: allowed_chars {
    type: string
    sql: ${TABLE}.allowed_chars ;;
  }

  dimension: archivation {
    type: string
    sql: ${TABLE}.archivation ;;
  }

  dimension: category_cnt {
    type: number
    sql: ${TABLE}.category_cnt ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: cron {
    type: number
    sql: ${TABLE}.cron ;;
  }

  dimension: cron_day {
    type: string
    sql: ${TABLE}.cron_day ;;
  }

  dimension: cron_time {
    type: string
    sql: ${TABLE}.cron_time ;;
  }

  dimension: export_only_enabled {
    type: number
    sql: ${TABLE}.export_only_enabled ;;
  }

  dimension: export_only_new {
    type: number
    sql: ${TABLE}.export_only_new ;;
  }

  dimension: feed_id {
    type: number
    sql: ${TABLE}.feed_id ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: ftp {
    type: number
    sql: ${TABLE}.ftp ;;
  }

  dimension: ftp_host {
    type: string
    sql: ${TABLE}.ftp_host ;;
  }

  dimension: ftp_passive_mode {
    type: number
    sql: ${TABLE}.ftp_passive_mode ;;
  }

  dimension: ftp_password {
    type: string
    sql: ${TABLE}.ftp_password ;;
  }

  dimension: ftp_path {
    type: string
    sql: ${TABLE}.ftp_path ;;
  }

  dimension: ftp_protocol {
    type: string
    sql: ${TABLE}.ftp_protocol ;;
  }

  dimension: ftp_user {
    type: string
    sql: ${TABLE}.ftp_user ;;
  }

  dimension: ga_content {
    type: string
    sql: ${TABLE}.ga_content ;;
  }

  dimension: ga_medium {
    type: string
    sql: ${TABLE}.ga_medium ;;
  }

  dimension: ga_name {
    type: string
    sql: ${TABLE}.ga_name ;;
  }

  dimension: ga_source {
    type: string
    sql: ${TABLE}.ga_source ;;
  }

  dimension: ga_term {
    type: string
    sql: ${TABLE}.ga_term ;;
  }

  dimension_group: generated {
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
    sql: ${TABLE}.generated_at ;;
  }

  dimension: generated_time_1 {
    type: number
    sql: ${TABLE}.generated_time ;;
  }

  dimension: hold {
    type: number
    sql: ${TABLE}.hold ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ignored_chars {
    type: string
    sql: ${TABLE}.ignored_chars ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notification_emails {
    type: string
    sql: ${TABLE}.notification_emails ;;
  }

  dimension: notification_events {
    type: string
    sql: ${TABLE}.notification_events ;;
  }

  dimension: product_cnt {
    type: number
    sql: ${TABLE}.product_cnt ;;
  }

  dimension: report_enabled {
    type: number
    sql: ${TABLE}.report_enabled ;;
  }

  dimension: review_cnt {
    type: number
    sql: ${TABLE}.review_cnt ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: uploaded {
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
    sql: ${TABLE}.uploaded_at ;;
  }

  measure: count {
    type: count
    drill_fields: [ga_name, hostname, filename, name]
  }
}
