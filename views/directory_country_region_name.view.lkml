view: directory_country_region_name {
  sql_table_name: `costway_com.directory_country_region_name`
    ;;

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname, name]
  }
}
