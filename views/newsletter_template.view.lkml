view: newsletter_template {
  sql_table_name: `costway_com.newsletter_template`
    ;;

  dimension_group: added {
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
    sql: ${TABLE}.added_at ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_at ;;
  }

  dimension: template_actual {
    type: number
    sql: ${TABLE}.template_actual ;;
  }

  dimension: template_code {
    type: string
    sql: ${TABLE}.template_code ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension: template_sender_email {
    type: string
    sql: ${TABLE}.template_sender_email ;;
  }

  dimension: template_sender_name {
    type: string
    sql: ${TABLE}.template_sender_name ;;
  }

  dimension: template_styles {
    type: string
    sql: ${TABLE}.template_styles ;;
  }

  dimension: template_subject {
    type: string
    sql: ${TABLE}.template_subject ;;
  }

  dimension: template_text {
    type: string
    sql: ${TABLE}.template_text ;;
  }

  dimension: template_text_preprocessed {
    type: string
    sql: ${TABLE}.template_text_preprocessed ;;
  }

  dimension: template_type {
    type: number
    sql: ${TABLE}.template_type ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, template_sender_name]
  }
}
