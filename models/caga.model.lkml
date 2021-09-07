connection: "ca_ga"

# include all the views
include: "/views/**/*.view"

datagroup: caga_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: caga_default_datagroup

explore: ca_ga_all_data {
  join: ca_ga_all_data__items {
    view_label: "Ca Ga All Data: Items"
    sql: LEFT JOIN UNNEST(${ca_ga_all_data.items}) as ca_ga_all_data__items ;;
    relationship: one_to_many
  }

  join: ca_ga_all_data__event_params {
    view_label: "Ca Ga All Data: Event Params"
    sql: LEFT JOIN UNNEST(${ca_ga_all_data.event_params}) as ca_ga_all_data__event_params ;;
    relationship: one_to_many
  }

  join: ca_ga_all_data__user_properties {
    view_label: "Ca Ga All Data: User Properties"
    sql: LEFT JOIN UNNEST(${ca_ga_all_data.user_properties}) as ca_ga_all_data__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210901 {
  join: events_20210901__items {
    view_label: "Events 20210901: Items"
    sql: LEFT JOIN UNNEST(${events_20210901.items}) as events_20210901__items ;;
    relationship: one_to_many
  }

  join: events_20210901__event_params {
    view_label: "Events 20210901: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210901.event_params}) as events_20210901__event_params ;;
    relationship: one_to_many
  }

  join: events_20210901__user_properties {
    view_label: "Events 20210901: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210901.user_properties}) as events_20210901__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210902 {
  join: events_20210902__items {
    view_label: "Events 20210902: Items"
    sql: LEFT JOIN UNNEST(${events_20210902.items}) as events_20210902__items ;;
    relationship: one_to_many
  }

  join: events_20210902__event_params {
    view_label: "Events 20210902: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210902.event_params}) as events_20210902__event_params ;;
    relationship: one_to_many
  }

  join: events_20210902__user_properties {
    view_label: "Events 20210902: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210902.user_properties}) as events_20210902__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210903 {
  join: events_20210903__items {
    view_label: "Events 20210903: Items"
    sql: LEFT JOIN UNNEST(${events_20210903.items}) as events_20210903__items ;;
    relationship: one_to_many
  }

  join: events_20210903__event_params {
    view_label: "Events 20210903: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210903.event_params}) as events_20210903__event_params ;;
    relationship: one_to_many
  }

  join: events_20210903__user_properties {
    view_label: "Events 20210903: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210903.user_properties}) as events_20210903__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210904 {
  join: events_20210904__items {
    view_label: "Events 20210904: Items"
    sql: LEFT JOIN UNNEST(${events_20210904.items}) as events_20210904__items ;;
    relationship: one_to_many
  }

  join: events_20210904__event_params {
    view_label: "Events 20210904: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210904.event_params}) as events_20210904__event_params ;;
    relationship: one_to_many
  }

  join: events_20210904__user_properties {
    view_label: "Events 20210904: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210904.user_properties}) as events_20210904__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210905 {
  join: events_20210905__items {
    view_label: "Events 20210905: Items"
    sql: LEFT JOIN UNNEST(${events_20210905.items}) as events_20210905__items ;;
    relationship: one_to_many
  }

  join: events_20210905__event_params {
    view_label: "Events 20210905: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210905.event_params}) as events_20210905__event_params ;;
    relationship: one_to_many
  }

  join: events_20210905__user_properties {
    view_label: "Events 20210905: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210905.user_properties}) as events_20210905__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_intraday_20210906 {
  join: events_intraday_20210906__items {
    view_label: "Events Intraday 20210906: Items"
    sql: LEFT JOIN UNNEST(${events_intraday_20210906.items}) as events_intraday_20210906__items ;;
    relationship: one_to_many
  }

  join: events_intraday_20210906__event_params {
    view_label: "Events Intraday 20210906: Event Params"
    sql: LEFT JOIN UNNEST(${events_intraday_20210906.event_params}) as events_intraday_20210906__event_params ;;
    relationship: one_to_many
  }

  join: events_intraday_20210906__user_properties {
    view_label: "Events Intraday 20210906: User Properties"
    sql: LEFT JOIN UNNEST(${events_intraday_20210906.user_properties}) as events_intraday_20210906__user_properties ;;
    relationship: one_to_many
  }
}
