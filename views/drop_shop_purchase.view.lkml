view: drop_shop_purchase {
  sql_table_name: `costmin.drop_shop_purchase`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: country_zh {
    type: string
    sql: ${TABLE}.country_zh ;;
  }

  dimension_group: created_at {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customs_duty {
    type: number
    sql: ${TABLE}.customs_duty ;;
  }

  dimension: customs_en {
    type: string
    sql: ${TABLE}.customs_en ;;
  }

  dimension: customs_zh {
    type: string
    sql: ${TABLE}.customs_zh ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: flag {
    type: number
    sql: ${TABLE}.flag ;;
  }

  dimension: goods_name {
    type: string
    sql: ${TABLE}.goods_name ;;
  }

  dimension: grand_total {
    type: number
    sql: ${TABLE}.grand_total ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: manger {
    type: string
    sql: ${TABLE}.manger ;;
  }

  dimension: mark {
    type: string
    sql: ${TABLE}.mark ;;
  }

  dimension: origin_code {
    type: string
    sql: ${TABLE}.origin_code ;;
  }

  dimension: pay_email {
    type: string
    sql: ${TABLE}.pay_email ;;
  }

  dimension: pay_type {
    type: string
    sql: ${TABLE}.pay_type ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: sales_platform {
    type: string
    sql: ${TABLE}.sales_platform ;;
  }

  dimension: shop_fee {
    type: number
    sql: ${TABLE}.shop_fee ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: store {
    case: {
      when: {
        sql: ${TABLE}.store="Costway-philip";;
        label: "Costway-Philip"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-Bath" ;;
        label: "Costway-Bath"
      }
      when: {
        sql: ${TABLE}.store="Costway-Emma" ;;
        label: "Costway-Emma"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-FB" or ${TABLE}.store="Costway-FB" ;;
        label: "COSTWAY-FB"
      }

      when: {
        sql: ${TABLE}.store="Costway-giveaway" or ${TABLE}.store="costway-giveaway" or ${TABLE}.store="Costway-giveaways";;
        label: "costway-giveaway"
      }

      when: {
        sql: ${TABLE}.store="COSTWAY-GZ" or ${TABLE}.store="Costway-GZ" or ${TABLE}.store="Costway-gz" or ${TABLE}.store="costway-GZ" or ${TABLE}.store="costway-gz";;
        label:"COSTWAY-GZ"
      }

      when:{
        sql: ${TABLE}.store="COSTWAY-GZLOWES" ;;
        label: "COSTWAY-GZLOWES"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-GZO" ;;
        label: "COSTWAY-GZO"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-GZOA" or ${TABLE}.store="Costway-GZOA" ;;
        label: "COSTWAY-GZOA"
      }
      when: {
        sql: ${TABLE}.store="Costway-Jandy" ;;
        label: "Costway-Jandy"
      }
      when: {
        sql: ${TABLE}.store="costway-Philip" or ${TABLE}.store="costway-philip";;
        label: "Costway-Philip"
      }

      when: {
        sql: ${TABLE}.store="costway-PhilipCA" ;;
        label: "Costway-PhilipCA"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-PhilipHD" ;;
        label: "Costway-PhilipCA"
      }
      when: {
        sql: ${TABLE}.store="COSTWAY-PhilipWE" ;;
        label: "Costway-PhilipWE"
      }
      when: {
        sql: ${TABLE}.store="Dropshop" or ${TABLE}.store="dropshop" ;;
        label: "DROPSHOP"
      }
      when: {
        sql: ${TABLE}.store="Topcraft-Stone" or ${TABLE}.store="Topcraft-stone" ;;
        label: "Topcraft-Stone"
      }
      when: {
        sql: ${TABLE}.store="Topcraft-WAYFAIR" or ${TABLE}.store="Topcraft-Wayfair" or ${TABLE}.store="Topcraft-wayfair" ;;
        label: "Topcraft-Wayfair"
      }
      when: {
        sql: ${TABLE}.store="Dropshop-HK" ;;
        label: "Dropshop-HK"
      }
      else: "Other"
    }
    type: string
    sql: ${TABLE}.store ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, goods_name, customer_name]
  }
}
