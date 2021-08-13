view: bannerslider_slider {
  sql_table_name: `costway_com.bannerslider_slider`
    ;;

  dimension: animation_b {
    type: string
    sql: ${TABLE}.animationB ;;
  }

  dimension: bannerslider_id {
    type: number
    sql: ${TABLE}.bannerslider_id ;;
  }

  dimension: caption {
    type: number
    sql: ${TABLE}.caption ;;
  }

  dimension: category_ids {
    type: string
    sql: ${TABLE}.category_ids ;;
  }

  dimension: custom_code {
    type: string
    sql: ${TABLE}.custom_code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: max_item {
    type: number
    sql: ${TABLE}.max_item ;;
  }

  dimension: min_item {
    type: number
    sql: ${TABLE}.min_item ;;
  }

  dimension: note_color {
    type: string
    sql: ${TABLE}.note_color ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: position_note {
    type: number
    sql: ${TABLE}.position_note ;;
  }

  dimension: show_title {
    type: number
    sql: ${TABLE}.show_title ;;
  }

  dimension: slider_speed {
    type: string
    sql: ${TABLE}.slider_speed ;;
  }

  dimension: sort_type {
    type: number
    sql: ${TABLE}.sort_type ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: style_content {
    type: number
    sql: ${TABLE}.style_content ;;
  }

  dimension: style_slide {
    type: string
    sql: ${TABLE}.style_slide ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url_view {
    type: string
    sql: ${TABLE}.url_view ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
