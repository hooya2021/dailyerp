view: room_category {
  sql_table_name: `costway_com.room_category`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: cssclass {
    type: string
    sql: ${TABLE}.cssclass ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: enable {
    type: number
    sql: ${TABLE}.enable ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: seo_description {
    type: string
    sql: ${TABLE}.seo_description ;;
  }

  dimension: seo_keywords {
    type: string
    sql: ${TABLE}.seo_keywords ;;
  }

  dimension: seo_title {
    type: string
    sql: ${TABLE}.seo_title ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, name]
  }
}
