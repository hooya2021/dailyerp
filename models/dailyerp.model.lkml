connection: "costmin"
connection: "for_us_daily"

# include all the views
include: "/views/**/*.view"

datagroup: dailyerp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dailyerp_default_datagroup

explore: drop_shop_purchase {}
explore: google_order {}
explore: report_order {}
explore: union_shop{}
explore: channels {}
explore: facebook_ads {}
explore: channel_fb_cost {}
