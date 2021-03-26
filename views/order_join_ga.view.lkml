view: sql_runner_query {
  derived_table: {
    sql: select
      a.*,
      b.*,
      c.traffic_source.source
      from `costway_com.sales_flat_order` a
      left join `costway_com.sales_flat_order_item` b on a.entity_id=b.order_id
      left join `analytics_250456953.events_20210310` c on c.ecommerce.transaction_id=a.increment_id
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: Qty {
    type: sum
    sql: ${total_qty_ordered} ;;
  }

  measure: Turnover {
    type: sum
    sql: ${total_paid} ;;
    value_format_name: decimal_2
  }

  measure: Turnover_2 {
    type: number
    sql: round(${Turnover},2) ;;
    value_format_name: decimal_2
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: protect_code {
    type: string
    sql: ${TABLE}.protect_code ;;
  }

  dimension: shipping_description {
    type: string
    sql: ${TABLE}.shipping_description ;;
  }

  dimension: is_virtual {
    type: number
    sql: ${TABLE}.is_virtual ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: base_discount_amount {
    type: number
    sql: ${TABLE}.base_discount_amount ;;
  }

  dimension: base_discount_canceled {
    type: number
    sql: ${TABLE}.base_discount_canceled ;;
  }

  dimension: base_discount_invoiced {
    type: number
    sql: ${TABLE}.base_discount_invoiced ;;
  }

  dimension: base_discount_refunded {
    type: number
    sql: ${TABLE}.base_discount_refunded ;;
  }

  dimension: base_grand_total {
    type: number
    sql: ${TABLE}.base_grand_total ;;
  }

  dimension: base_shipping_amount {
    type: number
    sql: ${TABLE}.base_shipping_amount ;;
  }

  dimension: base_shipping_canceled {
    type: number
    sql: ${TABLE}.base_shipping_canceled ;;
  }

  dimension: base_shipping_invoiced {
    type: number
    sql: ${TABLE}.base_shipping_invoiced ;;
  }

  dimension: base_shipping_refunded {
    type: number
    sql: ${TABLE}.base_shipping_refunded ;;
  }

  dimension: base_shipping_tax_amount {
    type: number
    sql: ${TABLE}.base_shipping_tax_amount ;;
  }

  dimension: base_shipping_tax_refunded {
    type: number
    sql: ${TABLE}.base_shipping_tax_refunded ;;
  }

  dimension: base_subtotal {
    type: number
    sql: ${TABLE}.base_subtotal ;;
  }

  dimension: base_subtotal_canceled {
    type: number
    sql: ${TABLE}.base_subtotal_canceled ;;
  }

  dimension: base_subtotal_invoiced {
    type: number
    sql: ${TABLE}.base_subtotal_invoiced ;;
  }

  dimension: base_subtotal_refunded {
    type: number
    sql: ${TABLE}.base_subtotal_refunded ;;
  }

  dimension: base_tax_amount {
    type: number
    sql: ${TABLE}.base_tax_amount ;;
  }

  dimension: base_tax_canceled {
    type: number
    sql: ${TABLE}.base_tax_canceled ;;
  }

  dimension: base_tax_invoiced {
    type: number
    sql: ${TABLE}.base_tax_invoiced ;;
  }

  dimension: base_tax_refunded {
    type: number
    sql: ${TABLE}.base_tax_refunded ;;
  }

  dimension: base_to_global_rate {
    type: number
    sql: ${TABLE}.base_to_global_rate ;;
  }

  dimension: base_to_order_rate {
    type: number
    sql: ${TABLE}.base_to_order_rate ;;
  }

  dimension: base_total_canceled {
    type: number
    sql: ${TABLE}.base_total_canceled ;;
  }

  dimension: base_total_invoiced {
    type: number
    sql: ${TABLE}.base_total_invoiced ;;
  }

  dimension: base_total_invoiced_cost {
    type: number
    sql: ${TABLE}.base_total_invoiced_cost ;;
  }

  dimension: base_total_offline_refunded {
    type: number
    sql: ${TABLE}.base_total_offline_refunded ;;
  }

  dimension: base_total_online_refunded {
    type: number
    sql: ${TABLE}.base_total_online_refunded ;;
  }

  dimension: base_total_paid {
    type: number
    sql: ${TABLE}.base_total_paid ;;
  }

  dimension: base_total_qty_ordered {
    type: number
    sql: ${TABLE}.base_total_qty_ordered ;;
  }

  dimension: base_total_refunded {
    type: number
    sql: ${TABLE}.base_total_refunded ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_canceled {
    type: number
    sql: ${TABLE}.discount_canceled ;;
  }

  dimension: discount_invoiced {
    type: number
    sql: ${TABLE}.discount_invoiced ;;
  }

  dimension: discount_refunded {
    type: number
    sql: ${TABLE}.discount_refunded ;;
  }

  dimension: grand_total {
    type: number
    sql: ${TABLE}.grand_total ;;
  }

  dimension: shipping_amount {
    type: number
    sql: ${TABLE}.shipping_amount ;;
  }

  dimension: shipping_canceled {
    type: number
    sql: ${TABLE}.shipping_canceled ;;
  }

  dimension: shipping_invoiced {
    type: number
    sql: ${TABLE}.shipping_invoiced ;;
  }

  dimension: shipping_refunded {
    type: number
    sql: ${TABLE}.shipping_refunded ;;
  }

  dimension: shipping_tax_amount {
    type: number
    sql: ${TABLE}.shipping_tax_amount ;;
  }

  dimension: shipping_tax_refunded {
    type: number
    sql: ${TABLE}.shipping_tax_refunded ;;
  }

  dimension: store_to_base_rate {
    type: number
    sql: ${TABLE}.store_to_base_rate ;;
  }

  dimension: store_to_order_rate {
    type: number
    sql: ${TABLE}.store_to_order_rate ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: subtotal_canceled {
    type: number
    sql: ${TABLE}.subtotal_canceled ;;
  }

  dimension: subtotal_invoiced {
    type: number
    sql: ${TABLE}.subtotal_invoiced ;;
  }

  dimension: subtotal_refunded {
    type: number
    sql: ${TABLE}.subtotal_refunded ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: tax_canceled {
    type: number
    sql: ${TABLE}.tax_canceled ;;
  }

  dimension: tax_invoiced {
    type: number
    sql: ${TABLE}.tax_invoiced ;;
  }

  dimension: tax_refunded {
    type: number
    sql: ${TABLE}.tax_refunded ;;
  }

  dimension: total_canceled {
    type: number
    sql: ${TABLE}.total_canceled ;;
  }

  dimension: total_invoiced {
    type: number
    sql: ${TABLE}.total_invoiced ;;
  }

  dimension: total_offline_refunded {
    type: number
    sql: ${TABLE}.total_offline_refunded ;;
  }

  dimension: total_online_refunded {
    type: number
    sql: ${TABLE}.total_online_refunded ;;
  }

  dimension: total_paid {
    type: number
    sql: ${TABLE}.total_paid ;;
  }

  dimension: total_qty_ordered {
    type: number
    sql: ${TABLE}.total_qty_ordered ;;
  }

  dimension: total_refunded {
    type: number
    sql: ${TABLE}.total_refunded ;;
  }

  dimension: can_ship_partially {
    type: number
    sql: ${TABLE}.can_ship_partially ;;
  }

  dimension: can_ship_partially_item {
    type: number
    sql: ${TABLE}.can_ship_partially_item ;;
  }

  dimension: customer_is_guest {
    type: number
    sql: ${TABLE}.customer_is_guest ;;
  }

  dimension: customer_note_notify {
    type: number
    sql: ${TABLE}.customer_note_notify ;;
  }

  dimension: billing_address_id {
    type: number
    sql: ${TABLE}.billing_address_id ;;
  }

  dimension: customer_group_id {
    type: number
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: edit_increment {
    type: number
    sql: ${TABLE}.edit_increment ;;
  }

  dimension: email_sent {
    type: number
    sql: ${TABLE}.email_sent ;;
  }

  dimension: forced_shipment_with_invoice {
    type: number
    sql: ${TABLE}.forced_shipment_with_invoice ;;
  }

  dimension: payment_auth_expiration {
    type: number
    sql: ${TABLE}.payment_auth_expiration ;;
  }

  dimension: quote_address_id {
    type: number
    sql: ${TABLE}.quote_address_id ;;
  }

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
  }

  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.shipping_address_id ;;
  }

  dimension: adjustment_negative {
    type: number
    sql: ${TABLE}.adjustment_negative ;;
  }

  dimension: adjustment_positive {
    type: number
    sql: ${TABLE}.adjustment_positive ;;
  }

  dimension: base_adjustment_negative {
    type: number
    sql: ${TABLE}.base_adjustment_negative ;;
  }

  dimension: base_adjustment_positive {
    type: number
    sql: ${TABLE}.base_adjustment_positive ;;
  }

  dimension: base_shipping_discount_amount {
    type: number
    sql: ${TABLE}.base_shipping_discount_amount ;;
  }

  dimension: base_subtotal_incl_tax {
    type: number
    sql: ${TABLE}.base_subtotal_incl_tax ;;
  }

  dimension: base_total_due {
    type: number
    sql: ${TABLE}.base_total_due ;;
  }

  dimension: payment_authorization_amount {
    type: number
    sql: ${TABLE}.payment_authorization_amount ;;
  }

  dimension: shipping_discount_amount {
    type: number
    sql: ${TABLE}.shipping_discount_amount ;;
  }

  dimension: subtotal_incl_tax {
    type: number
    sql: ${TABLE}.subtotal_incl_tax ;;
  }

  dimension: total_due {
    type: number
    sql: ${TABLE}.total_due ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension_group: customer_dob {
    type: time
    datatype: datetime
    sql: ${TABLE}.customer_dob ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: applied_rule_ids {
    type: string
    sql: ${TABLE}.applied_rule_ids ;;
  }

  dimension: base_currency_code {
    type: string
    sql: ${TABLE}.base_currency_code ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_firstname {
    type: string
    sql: ${TABLE}.customer_firstname ;;
  }

  dimension: customer_lastname {
    type: string
    sql: ${TABLE}.customer_lastname ;;
  }

  dimension: customer_middlename {
    type: string
    sql: ${TABLE}.customer_middlename ;;
  }

  dimension: customer_prefix {
    type: string
    sql: ${TABLE}.customer_prefix ;;
  }

  dimension: customer_suffix {
    type: string
    sql: ${TABLE}.customer_suffix ;;
  }

  dimension: customer_taxvat {
    type: string
    sql: ${TABLE}.customer_taxvat ;;
  }

  dimension: discount_description {
    type: string
    sql: ${TABLE}.discount_description ;;
  }

  dimension: ext_customer_id {
    type: string
    sql: ${TABLE}.ext_customer_id ;;
  }

  dimension: ext_order_id {
    type: string
    sql: ${TABLE}.ext_order_id ;;
  }

  dimension: global_currency_code {
    type: string
    sql: ${TABLE}.global_currency_code ;;
  }

  dimension: hold_before_state {
    type: string
    sql: ${TABLE}.hold_before_state ;;
  }

  dimension: hold_before_status {
    type: string
    sql: ${TABLE}.hold_before_status ;;
  }

  dimension: order_currency_code {
    type: string
    sql: ${TABLE}.order_currency_code ;;
  }

  dimension: original_increment_id {
    type: string
    sql: ${TABLE}.original_increment_id ;;
  }

  dimension: relation_child_id {
    type: string
    sql: ${TABLE}.relation_child_id ;;
  }

  dimension: relation_child_real_id {
    type: string
    sql: ${TABLE}.relation_child_real_id ;;
  }

  dimension: relation_parent_id {
    type: string
    sql: ${TABLE}.relation_parent_id ;;
  }

  dimension: relation_parent_real_id {
    type: string
    sql: ${TABLE}.relation_parent_real_id ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension: shipping_method {
    type: string
    sql: ${TABLE}.shipping_method ;;
  }

  dimension: store_currency_code {
    type: string
    sql: ${TABLE}.store_currency_code ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: x_forwarded_for {
    type: string
    sql: ${TABLE}.x_forwarded_for ;;
  }

  dimension: customer_note {
    type: string
    sql: ${TABLE}.customer_note ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension: total_item_count {
    type: number
    sql: ${TABLE}.total_item_count ;;
  }

  dimension: customer_gender {
    type: number
    sql: ${TABLE}.customer_gender ;;
  }

  dimension: hidden_tax_amount {
    type: number
    sql: ${TABLE}.hidden_tax_amount ;;
  }

  dimension: base_hidden_tax_amount {
    type: number
    sql: ${TABLE}.base_hidden_tax_amount ;;
  }

  dimension: shipping_hidden_tax_amount {
    type: number
    sql: ${TABLE}.shipping_hidden_tax_amount ;;
  }

  dimension: base_shipping_hidden_tax_amnt {
    type: number
    sql: ${TABLE}.base_shipping_hidden_tax_amnt ;;
  }

  dimension: hidden_tax_invoiced {
    type: number
    sql: ${TABLE}.hidden_tax_invoiced ;;
  }

  dimension: base_hidden_tax_invoiced {
    type: number
    sql: ${TABLE}.base_hidden_tax_invoiced ;;
  }

  dimension: hidden_tax_refunded {
    type: number
    sql: ${TABLE}.hidden_tax_refunded ;;
  }

  dimension: base_hidden_tax_refunded {
    type: number
    sql: ${TABLE}.base_hidden_tax_refunded ;;
  }

  dimension: shipping_incl_tax {
    type: number
    sql: ${TABLE}.shipping_incl_tax ;;
  }

  dimension: base_shipping_incl_tax {
    type: number
    sql: ${TABLE}.base_shipping_incl_tax ;;
  }

  dimension: coupon_rule_name {
    type: string
    sql: ${TABLE}.coupon_rule_name ;;
  }

  dimension: paypal_ipn_customer_notified {
    type: number
    sql: ${TABLE}.paypal_ipn_customer_notified ;;
  }

  dimension: gift_message_id {
    type: number
    sql: ${TABLE}.gift_message_id ;;
  }

  dimension: presell_increment_id {
    type: string
    sql: ${TABLE}.presell_increment_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: parent_item_id {
    type: number
    sql: ${TABLE}.parent_item_id ;;
  }

  dimension: quote_item_id {
    type: number
    sql: ${TABLE}.quote_item_id ;;
  }

  dimension: store_id_1 {
    type: number
    sql: ${TABLE}.store_id_1 ;;
  }

  dimension_group: created_at_1 {
    type: time
    sql: ${TABLE}.created_at_1 ;;
  }

  dimension_group: updated_at_1 {
    type: time
    sql: ${TABLE}.updated_at_1 ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: product_options {
    type: string
    sql: ${TABLE}.product_options ;;
  }

  dimension: weight_1 {
    type: number
    sql: ${TABLE}.weight_1 ;;
  }

  dimension: is_virtual_1 {
    type: number
    sql: ${TABLE}.is_virtual_1 ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: applied_rule_ids_1 {
    type: string
    sql: ${TABLE}.applied_rule_ids_1 ;;
  }

  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }

  dimension: free_shipping {
    type: number
    sql: ${TABLE}.free_shipping ;;
  }

  dimension: is_qty_decimal {
    type: number
    sql: ${TABLE}.is_qty_decimal ;;
  }

  dimension: no_discount {
    type: number
    sql: ${TABLE}.no_discount ;;
  }

  dimension: qty_backordered {
    type: number
    sql: ${TABLE}.qty_backordered ;;
  }

  dimension: qty_canceled {
    type: number
    sql: ${TABLE}.qty_canceled ;;
  }

  dimension: qty_invoiced {
    type: number
    sql: ${TABLE}.qty_invoiced ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.qty_ordered ;;
  }

  dimension: qty_refunded {
    type: number
    sql: ${TABLE}.qty_refunded ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.qty_shipped ;;
  }

  dimension: base_cost {
    type: number
    sql: ${TABLE}.base_cost ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.base_price ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: base_original_price {
    type: number
    sql: ${TABLE}.base_original_price ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: tax_amount_1 {
    type: number
    sql: ${TABLE}.tax_amount_1 ;;
  }

  dimension: base_tax_amount_1 {
    type: number
    sql: ${TABLE}.base_tax_amount_1 ;;
  }

  dimension: tax_invoiced_1 {
    type: number
    sql: ${TABLE}.tax_invoiced_1 ;;
  }

  dimension: base_tax_invoiced_1 {
    type: number
    sql: ${TABLE}.base_tax_invoiced_1 ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.discount_percent ;;
  }

  dimension: discount_amount_1 {
    type: number
    sql: ${TABLE}.discount_amount_1 ;;
  }

  dimension: base_discount_amount_1 {
    type: number
    sql: ${TABLE}.base_discount_amount_1 ;;
  }

  dimension: discount_invoiced_1 {
    type: number
    sql: ${TABLE}.discount_invoiced_1 ;;
  }

  dimension: base_discount_invoiced_1 {
    type: number
    sql: ${TABLE}.base_discount_invoiced_1 ;;
  }

  dimension: amount_refunded {
    type: number
    sql: ${TABLE}.amount_refunded ;;
  }

  dimension: base_amount_refunded {
    type: number
    sql: ${TABLE}.base_amount_refunded ;;
  }

  dimension: row_total {
    type: number
    sql: ${TABLE}.row_total ;;
  }

  dimension: base_row_total {
    type: number
    sql: ${TABLE}.base_row_total ;;
  }

  dimension: row_invoiced {
    type: number
    sql: ${TABLE}.row_invoiced ;;
  }

  dimension: base_row_invoiced {
    type: number
    sql: ${TABLE}.base_row_invoiced ;;
  }

  dimension: row_weight {
    type: number
    sql: ${TABLE}.row_weight ;;
  }

  dimension: base_tax_before_discount {
    type: number
    sql: ${TABLE}.base_tax_before_discount ;;
  }

  dimension: tax_before_discount {
    type: number
    sql: ${TABLE}.tax_before_discount ;;
  }

  dimension: ext_order_item_id {
    type: string
    sql: ${TABLE}.ext_order_item_id ;;
  }

  dimension: locked_do_invoice {
    type: number
    sql: ${TABLE}.locked_do_invoice ;;
  }

  dimension: locked_do_ship {
    type: number
    sql: ${TABLE}.locked_do_ship ;;
  }

  dimension: price_incl_tax {
    type: number
    sql: ${TABLE}.price_incl_tax ;;
  }

  dimension: base_price_incl_tax {
    type: number
    sql: ${TABLE}.base_price_incl_tax ;;
  }

  dimension: row_total_incl_tax {
    type: number
    sql: ${TABLE}.row_total_incl_tax ;;
  }

  dimension: base_row_total_incl_tax {
    type: number
    sql: ${TABLE}.base_row_total_incl_tax ;;
  }

  dimension: hidden_tax_amount_1 {
    type: number
    sql: ${TABLE}.hidden_tax_amount_1 ;;
  }

  dimension: base_hidden_tax_amount_1 {
    type: number
    sql: ${TABLE}.base_hidden_tax_amount_1 ;;
  }

  dimension: hidden_tax_invoiced_1 {
    type: number
    sql: ${TABLE}.hidden_tax_invoiced_1 ;;
  }

  dimension: base_hidden_tax_invoiced_1 {
    type: number
    sql: ${TABLE}.base_hidden_tax_invoiced_1 ;;
  }

  dimension: hidden_tax_refunded_1 {
    type: number
    sql: ${TABLE}.hidden_tax_refunded_1 ;;
  }

  dimension: base_hidden_tax_refunded_1 {
    type: number
    sql: ${TABLE}.base_hidden_tax_refunded_1 ;;
  }

  dimension: is_nominal {
    type: number
    sql: ${TABLE}.is_nominal ;;
  }

  dimension: tax_canceled_1 {
    type: number
    sql: ${TABLE}.tax_canceled_1 ;;
  }

  dimension: hidden_tax_canceled {
    type: number
    sql: ${TABLE}.hidden_tax_canceled ;;
  }

  dimension: tax_refunded_1 {
    type: number
    sql: ${TABLE}.tax_refunded_1 ;;
  }

  dimension: base_tax_refunded_1 {
    type: number
    sql: ${TABLE}.base_tax_refunded_1 ;;
  }

  dimension: discount_refunded_1 {
    type: number
    sql: ${TABLE}.discount_refunded_1 ;;
  }

  dimension: base_discount_refunded_1 {
    type: number
    sql: ${TABLE}.base_discount_refunded_1 ;;
  }

  dimension: gift_message_id_1 {
    type: number
    sql: ${TABLE}.gift_message_id_1 ;;
  }

  dimension: gift_message_available {
    type: number
    sql: ${TABLE}.gift_message_available ;;
  }

  dimension: base_weee_tax_applied_amount {
    type: number
    sql: ${TABLE}.base_weee_tax_applied_amount ;;
  }

  dimension: base_weee_tax_applied_row_amnt {
    type: number
    sql: ${TABLE}.base_weee_tax_applied_row_amnt ;;
  }

  dimension: weee_tax_applied_amount {
    type: number
    sql: ${TABLE}.weee_tax_applied_amount ;;
  }

  dimension: weee_tax_applied_row_amount {
    type: number
    sql: ${TABLE}.weee_tax_applied_row_amount ;;
  }

  dimension: weee_tax_applied {
    type: string
    sql: ${TABLE}.weee_tax_applied ;;
  }

  dimension: weee_tax_disposition {
    type: number
    sql: ${TABLE}.weee_tax_disposition ;;
  }

  dimension: weee_tax_row_disposition {
    type: number
    sql: ${TABLE}.weee_tax_row_disposition ;;
  }

  dimension: base_weee_tax_disposition {
    type: number
    sql: ${TABLE}.base_weee_tax_disposition ;;
  }

  dimension: base_weee_tax_row_disposition {
    type: number
    sql: ${TABLE}.base_weee_tax_row_disposition ;;
  }

  dimension: hostname_1 {
    type: string
    sql: ${TABLE}.hostname_1 ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  set: detail {
    fields: [
      entity_id,
      state,
      status,
      coupon_code,
      protect_code,
      shipping_description,
      is_virtual,
      store_id,
      customer_id,
      base_discount_amount,
      base_discount_canceled,
      base_discount_invoiced,
      base_discount_refunded,
      base_grand_total,
      base_shipping_amount,
      base_shipping_canceled,
      base_shipping_invoiced,
      base_shipping_refunded,
      base_shipping_tax_amount,
      base_shipping_tax_refunded,
      base_subtotal,
      base_subtotal_canceled,
      base_subtotal_invoiced,
      base_subtotal_refunded,
      base_tax_amount,
      base_tax_canceled,
      base_tax_invoiced,
      base_tax_refunded,
      base_to_global_rate,
      base_to_order_rate,
      base_total_canceled,
      base_total_invoiced,
      base_total_invoiced_cost,
      base_total_offline_refunded,
      base_total_online_refunded,
      base_total_paid,
      base_total_qty_ordered,
      base_total_refunded,
      discount_amount,
      discount_canceled,
      discount_invoiced,
      discount_refunded,
      grand_total,
      shipping_amount,
      shipping_canceled,
      shipping_invoiced,
      shipping_refunded,
      shipping_tax_amount,
      shipping_tax_refunded,
      store_to_base_rate,
      store_to_order_rate,
      subtotal,
      subtotal_canceled,
      subtotal_invoiced,
      subtotal_refunded,
      tax_amount,
      tax_canceled,
      tax_invoiced,
      tax_refunded,
      total_canceled,
      total_invoiced,
      total_offline_refunded,
      total_online_refunded,
      total_paid,
      total_qty_ordered,
      total_refunded,
      can_ship_partially,
      can_ship_partially_item,
      customer_is_guest,
      customer_note_notify,
      billing_address_id,
      customer_group_id,
      edit_increment,
      email_sent,
      forced_shipment_with_invoice,
      payment_auth_expiration,
      quote_address_id,
      quote_id,
      shipping_address_id,
      adjustment_negative,
      adjustment_positive,
      base_adjustment_negative,
      base_adjustment_positive,
      base_shipping_discount_amount,
      base_subtotal_incl_tax,
      base_total_due,
      payment_authorization_amount,
      shipping_discount_amount,
      subtotal_incl_tax,
      total_due,
      weight,
      customer_dob_time,
      increment_id,
      applied_rule_ids,
      base_currency_code,
      customer_email,
      customer_firstname,
      customer_lastname,
      customer_middlename,
      customer_prefix,
      customer_suffix,
      customer_taxvat,
      discount_description,
      ext_customer_id,
      ext_order_id,
      global_currency_code,
      hold_before_state,
      hold_before_status,
      order_currency_code,
      original_increment_id,
      relation_child_id,
      relation_child_real_id,
      relation_parent_id,
      relation_parent_real_id,
      remote_ip,
      shipping_method,
      store_currency_code,
      store_name,
      x_forwarded_for,
      customer_note,
      created_at_time,
      updated_at_time,
      total_item_count,
      customer_gender,
      hidden_tax_amount,
      base_hidden_tax_amount,
      shipping_hidden_tax_amount,
      base_shipping_hidden_tax_amnt,
      hidden_tax_invoiced,
      base_hidden_tax_invoiced,
      hidden_tax_refunded,
      base_hidden_tax_refunded,
      shipping_incl_tax,
      base_shipping_incl_tax,
      coupon_rule_name,
      paypal_ipn_customer_notified,
      gift_message_id,
      presell_increment_id,
      hostname,
      item_id,
      order_id,
      parent_item_id,
      quote_item_id,
      store_id_1,
      created_at_1_time,
      updated_at_1_time,
      product_id,
      product_type,
      product_options,
      weight_1,
      is_virtual_1,
      sku,
      name,
      description,
      applied_rule_ids_1,
      additional_data,
      free_shipping,
      is_qty_decimal,
      no_discount,
      qty_backordered,
      qty_canceled,
      qty_invoiced,
      qty_ordered,
      qty_refunded,
      qty_shipped,
      base_cost,
      price,
      base_price,
      original_price,
      base_original_price,
      tax_percent,
      tax_amount_1,
      base_tax_amount_1,
      tax_invoiced_1,
      base_tax_invoiced_1,
      discount_percent,
      discount_amount_1,
      base_discount_amount_1,
      discount_invoiced_1,
      base_discount_invoiced_1,
      amount_refunded,
      base_amount_refunded,
      row_total,
      base_row_total,
      row_invoiced,
      base_row_invoiced,
      row_weight,
      base_tax_before_discount,
      tax_before_discount,
      ext_order_item_id,
      locked_do_invoice,
      locked_do_ship,
      price_incl_tax,
      base_price_incl_tax,
      row_total_incl_tax,
      base_row_total_incl_tax,
      hidden_tax_amount_1,
      base_hidden_tax_amount_1,
      hidden_tax_invoiced_1,
      base_hidden_tax_invoiced_1,
      hidden_tax_refunded_1,
      base_hidden_tax_refunded_1,
      is_nominal,
      tax_canceled_1,
      hidden_tax_canceled,
      tax_refunded_1,
      base_tax_refunded_1,
      discount_refunded_1,
      base_discount_refunded_1,
      gift_message_id_1,
      gift_message_available,
      base_weee_tax_applied_amount,
      base_weee_tax_applied_row_amnt,
      weee_tax_applied_amount,
      weee_tax_applied_row_amount,
      weee_tax_applied,
      weee_tax_disposition,
      weee_tax_row_disposition,
      base_weee_tax_disposition,
      base_weee_tax_row_disposition,
      hostname_1,
      source
    ]
  }
}
