view: cms_page {
  sql_table_name: `costway_com.cms_page`
    ;;

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: content_heading {
    type: string
    sql: ${TABLE}.content_heading ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: custom_layout_update_xml {
    type: string
    sql: ${TABLE}.custom_layout_update_xml ;;
  }

  dimension: custom_root_template {
    type: string
    sql: ${TABLE}.custom_root_template ;;
  }

  dimension: custom_theme {
    type: string
    sql: ${TABLE}.custom_theme ;;
  }

  dimension_group: custom_theme_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.custom_theme_from ;;
  }

  dimension_group: custom_theme_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.custom_theme_to ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: layout_update_xml {
    type: string
    sql: ${TABLE}.layout_update_xml ;;
  }

  dimension: meta_description {
    type: string
    sql: ${TABLE}.meta_description ;;
  }

  dimension: meta_keywords {
    type: string
    sql: ${TABLE}.meta_keywords ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
  }

  dimension: root_template {
    type: string
    sql: ${TABLE}.root_template ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
