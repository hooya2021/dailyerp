connection: "for_us_daily"

# include all the views
include: "/views/**/*.view"

datagroup: us_daily_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: us_daily_default_datagroup

explore: google_sheet__dea_wiki {}

explore: google_sheet__deal_news {}

explore: google_sheet_bing_cpc {}

explore: google_sheet_bradsdeal {}

explore: google_sheet_connexity {}

explore: google_sheet_criteo {}

explore: google_sheet_erp_sales_cost {}

explore: google_sheet_ihot_offer {}

explore: google_sheet_outbrain {}

explore: google_sheet_rakuten_affiliate {}

explore: google_sheet_slickdeals {}
explore: deal_daily {}
explore: channels {}
