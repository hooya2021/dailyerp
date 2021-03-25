view: directory_currency_rate {
  sql_table_name: `costway_com.directory_currency_rate`
    ;;

  dimension: currency_from {
    type: string
    sql: ${TABLE}.currency_from ;;
  }

  dimension: currency_to {
    type: string
    sql: ${TABLE}.currency_to ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
