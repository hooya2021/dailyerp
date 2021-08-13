view: aw_afp_productimages {
  sql_table_name: `costway_com.aw_afp_productimages`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname]
  }
}
