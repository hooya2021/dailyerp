connection: "hooya_ga"

# include all the views
include: "/views/**/*.view"

datagroup: daily_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: daily_report_default_datagroup

explore: events_20210310 {
  join: events_20210310__items {
    view_label: "Events 20210310: Items"
    sql: LEFT JOIN UNNEST(${events_20210310.items}) as events_20210310__items ;;
    relationship: one_to_many
  }

  join: events_20210310__event_params {
    view_label: "Events 20210310: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210310.event_params}) as events_20210310__event_params ;;
    relationship: one_to_many
  }

  join: events_20210310__user_properties {
    view_label: "Events 20210310: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210310.user_properties}) as events_20210310__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210311 {
  join: events_20210311__items {
    view_label: "Events 20210311: Items"
    sql: LEFT JOIN UNNEST(${events_20210311.items}) as events_20210311__items ;;
    relationship: one_to_many
  }

  join: events_20210311__event_params {
    view_label: "Events 20210311: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210311.event_params}) as events_20210311__event_params ;;
    relationship: one_to_many
  }

  join: events_20210311__user_properties {
    view_label: "Events 20210311: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210311.user_properties}) as events_20210311__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210312 {
  join: events_20210312__items {
    view_label: "Events 20210312: Items"
    sql: LEFT JOIN UNNEST(${events_20210312.items}) as events_20210312__items ;;
    relationship: one_to_many
  }

  join: events_20210312__event_params {
    view_label: "Events 20210312: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210312.event_params}) as events_20210312__event_params ;;
    relationship: one_to_many
  }

  join: events_20210312__user_properties {
    view_label: "Events 20210312: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210312.user_properties}) as events_20210312__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210313 {
  join: events_20210313__items {
    view_label: "Events 20210313: Items"
    sql: LEFT JOIN UNNEST(${events_20210313.items}) as events_20210313__items ;;
    relationship: one_to_many
  }

  join: events_20210313__event_params {
    view_label: "Events 20210313: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210313.event_params}) as events_20210313__event_params ;;
    relationship: one_to_many
  }

  join: events_20210313__user_properties {
    view_label: "Events 20210313: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210313.user_properties}) as events_20210313__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210314 {
  join: events_20210314__items {
    view_label: "Events 20210314: Items"
    sql: LEFT JOIN UNNEST(${events_20210314.items}) as events_20210314__items ;;
    relationship: one_to_many
  }

  join: events_20210314__event_params {
    view_label: "Events 20210314: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210314.event_params}) as events_20210314__event_params ;;
    relationship: one_to_many
  }

  join: events_20210314__user_properties {
    view_label: "Events 20210314: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210314.user_properties}) as events_20210314__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210315 {
  join: events_20210315__items {
    view_label: "Events 20210315: Items"
    sql: LEFT JOIN UNNEST(${events_20210315.items}) as events_20210315__items ;;
    relationship: one_to_many
  }

  join: events_20210315__event_params {
    view_label: "Events 20210315: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210315.event_params}) as events_20210315__event_params ;;
    relationship: one_to_many
  }

  join: events_20210315__user_properties {
    view_label: "Events 20210315: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210315.user_properties}) as events_20210315__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210316 {
  join: events_20210316__items {
    view_label: "Events 20210316: Items"
    sql: LEFT JOIN UNNEST(${events_20210316.items}) as events_20210316__items ;;
    relationship: one_to_many
  }

  join: events_20210316__event_params {
    view_label: "Events 20210316: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210316.event_params}) as events_20210316__event_params ;;
    relationship: one_to_many
  }

  join: events_20210316__user_properties {
    view_label: "Events 20210316: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210316.user_properties}) as events_20210316__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210317 {
  join: events_20210317__items {
    view_label: "Events 20210317: Items"
    sql: LEFT JOIN UNNEST(${events_20210317.items}) as events_20210317__items ;;
    relationship: one_to_many
  }

  join: events_20210317__event_params {
    view_label: "Events 20210317: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210317.event_params}) as events_20210317__event_params ;;
    relationship: one_to_many
  }

  join: events_20210317__user_properties {
    view_label: "Events 20210317: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210317.user_properties}) as events_20210317__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210318 {
  join: events_20210318__items {
    view_label: "Events 20210318: Items"
    sql: LEFT JOIN UNNEST(${events_20210318.items}) as events_20210318__items ;;
    relationship: one_to_many
  }

  join: events_20210318__event_params {
    view_label: "Events 20210318: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210318.event_params}) as events_20210318__event_params ;;
    relationship: one_to_many
  }

  join: events_20210318__user_properties {
    view_label: "Events 20210318: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210318.user_properties}) as events_20210318__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210319 {
  join: events_20210319__items {
    view_label: "Events 20210319: Items"
    sql: LEFT JOIN UNNEST(${events_20210319.items}) as events_20210319__items ;;
    relationship: one_to_many
  }

  join: events_20210319__event_params {
    view_label: "Events 20210319: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210319.event_params}) as events_20210319__event_params ;;
    relationship: one_to_many
  }

  join: events_20210319__user_properties {
    view_label: "Events 20210319: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210319.user_properties}) as events_20210319__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210320 {
  join: events_20210320__items {
    view_label: "Events 20210320: Items"
    sql: LEFT JOIN UNNEST(${events_20210320.items}) as events_20210320__items ;;
    relationship: one_to_many
  }

  join: events_20210320__event_params {
    view_label: "Events 20210320: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210320.event_params}) as events_20210320__event_params ;;
    relationship: one_to_many
  }

  join: events_20210320__user_properties {
    view_label: "Events 20210320: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210320.user_properties}) as events_20210320__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210321 {
  join: events_20210321__items {
    view_label: "Events 20210321: Items"
    sql: LEFT JOIN UNNEST(${events_20210321.items}) as events_20210321__items ;;
    relationship: one_to_many
  }

  join: events_20210321__event_params {
    view_label: "Events 20210321: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210321.event_params}) as events_20210321__event_params ;;
    relationship: one_to_many
  }

  join: events_20210321__user_properties {
    view_label: "Events 20210321: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210321.user_properties}) as events_20210321__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210322 {
  join: events_20210322__items {
    view_label: "Events 20210322: Items"
    sql: LEFT JOIN UNNEST(${events_20210322.items}) as events_20210322__items ;;
    relationship: one_to_many
  }

  join: events_20210322__event_params {
    view_label: "Events 20210322: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210322.event_params}) as events_20210322__event_params ;;
    relationship: one_to_many
  }

  join: events_20210322__user_properties {
    view_label: "Events 20210322: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210322.user_properties}) as events_20210322__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210323 {
  join: events_20210323__items {
    view_label: "Events 20210323: Items"
    sql: LEFT JOIN UNNEST(${events_20210323.items}) as events_20210323__items ;;
    relationship: one_to_many
  }

  join: events_20210323__event_params {
    view_label: "Events 20210323: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210323.event_params}) as events_20210323__event_params ;;
    relationship: one_to_many
  }

  join: events_20210323__user_properties {
    view_label: "Events 20210323: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210323.user_properties}) as events_20210323__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210324 {
  join: events_20210324__items {
    view_label: "Events 20210324: Items"
    sql: LEFT JOIN UNNEST(${events_20210324.items}) as events_20210324__items ;;
    relationship: one_to_many
  }

  join: events_20210324__event_params {
    view_label: "Events 20210324: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210324.event_params}) as events_20210324__event_params ;;
    relationship: one_to_many
  }

  join: events_20210324__user_properties {
    view_label: "Events 20210324: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210324.user_properties}) as events_20210324__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210325 {
  join: events_20210325__items {
    view_label: "Events 20210325: Items"
    sql: LEFT JOIN UNNEST(${events_20210325.items}) as events_20210325__items ;;
    relationship: one_to_many
  }

  join: events_20210325__event_params {
    view_label: "Events 20210325: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210325.event_params}) as events_20210325__event_params ;;
    relationship: one_to_many
  }

  join: events_20210325__user_properties {
    view_label: "Events 20210325: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210325.user_properties}) as events_20210325__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210326 {
  join: events_20210326__items {
    view_label: "Events 20210326: Items"
    sql: LEFT JOIN UNNEST(${events_20210326.items}) as events_20210326__items ;;
    relationship: one_to_many
  }

  join: events_20210326__event_params {
    view_label: "Events 20210326: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210326.event_params}) as events_20210326__event_params ;;
    relationship: one_to_many
  }

  join: events_20210326__user_properties {
    view_label: "Events 20210326: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210326.user_properties}) as events_20210326__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210327 {
  join: events_20210327__items {
    view_label: "Events 20210327: Items"
    sql: LEFT JOIN UNNEST(${events_20210327.items}) as events_20210327__items ;;
    relationship: one_to_many
  }

  join: events_20210327__event_params {
    view_label: "Events 20210327: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210327.event_params}) as events_20210327__event_params ;;
    relationship: one_to_many
  }

  join: events_20210327__user_properties {
    view_label: "Events 20210327: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210327.user_properties}) as events_20210327__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210328 {
  join: events_20210328__items {
    view_label: "Events 20210328: Items"
    sql: LEFT JOIN UNNEST(${events_20210328.items}) as events_20210328__items ;;
    relationship: one_to_many
  }

  join: events_20210328__event_params {
    view_label: "Events 20210328: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210328.event_params}) as events_20210328__event_params ;;
    relationship: one_to_many
  }

  join: events_20210328__user_properties {
    view_label: "Events 20210328: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210328.user_properties}) as events_20210328__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210329 {
  join: events_20210329__items {
    view_label: "Events 20210329: Items"
    sql: LEFT JOIN UNNEST(${events_20210329.items}) as events_20210329__items ;;
    relationship: one_to_many
  }

  join: events_20210329__event_params {
    view_label: "Events 20210329: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210329.event_params}) as events_20210329__event_params ;;
    relationship: one_to_many
  }

  join: events_20210329__user_properties {
    view_label: "Events 20210329: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210329.user_properties}) as events_20210329__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210330 {
  join: events_20210330__items {
    view_label: "Events 20210330: Items"
    sql: LEFT JOIN UNNEST(${events_20210330.items}) as events_20210330__items ;;
    relationship: one_to_many
  }

  join: events_20210330__event_params {
    view_label: "Events 20210330: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210330.event_params}) as events_20210330__event_params ;;
    relationship: one_to_many
  }

  join: events_20210330__user_properties {
    view_label: "Events 20210330: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210330.user_properties}) as events_20210330__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210331 {
  join: events_20210331__items {
    view_label: "Events 20210331: Items"
    sql: LEFT JOIN UNNEST(${events_20210331.items}) as events_20210331__items ;;
    relationship: one_to_many
  }

  join: events_20210331__event_params {
    view_label: "Events 20210331: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210331.event_params}) as events_20210331__event_params ;;
    relationship: one_to_many
  }

  join: events_20210331__user_properties {
    view_label: "Events 20210331: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210331.user_properties}) as events_20210331__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210401 {
  join: events_20210401__items {
    view_label: "Events 20210401: Items"
    sql: LEFT JOIN UNNEST(${events_20210401.items}) as events_20210401__items ;;
    relationship: one_to_many
  }

  join: events_20210401__event_params {
    view_label: "Events 20210401: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210401.event_params}) as events_20210401__event_params ;;
    relationship: one_to_many
  }

  join: events_20210401__user_properties {
    view_label: "Events 20210401: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210401.user_properties}) as events_20210401__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210402 {
  join: events_20210402__items {
    view_label: "Events 20210402: Items"
    sql: LEFT JOIN UNNEST(${events_20210402.items}) as events_20210402__items ;;
    relationship: one_to_many
  }

  join: events_20210402__event_params {
    view_label: "Events 20210402: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210402.event_params}) as events_20210402__event_params ;;
    relationship: one_to_many
  }

  join: events_20210402__user_properties {
    view_label: "Events 20210402: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210402.user_properties}) as events_20210402__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210403 {
  join: events_20210403__items {
    view_label: "Events 20210403: Items"
    sql: LEFT JOIN UNNEST(${events_20210403.items}) as events_20210403__items ;;
    relationship: one_to_many
  }

  join: events_20210403__event_params {
    view_label: "Events 20210403: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210403.event_params}) as events_20210403__event_params ;;
    relationship: one_to_many
  }

  join: events_20210403__user_properties {
    view_label: "Events 20210403: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210403.user_properties}) as events_20210403__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210404 {
  join: events_20210404__items {
    view_label: "Events 20210404: Items"
    sql: LEFT JOIN UNNEST(${events_20210404.items}) as events_20210404__items ;;
    relationship: one_to_many
  }

  join: events_20210404__event_params {
    view_label: "Events 20210404: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210404.event_params}) as events_20210404__event_params ;;
    relationship: one_to_many
  }

  join: events_20210404__user_properties {
    view_label: "Events 20210404: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210404.user_properties}) as events_20210404__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210405 {
  join: events_20210405__items {
    view_label: "Events 20210405: Items"
    sql: LEFT JOIN UNNEST(${events_20210405.items}) as events_20210405__items ;;
    relationship: one_to_many
  }

  join: events_20210405__event_params {
    view_label: "Events 20210405: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210405.event_params}) as events_20210405__event_params ;;
    relationship: one_to_many
  }

  join: events_20210405__user_properties {
    view_label: "Events 20210405: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210405.user_properties}) as events_20210405__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210406 {
  join: events_20210406__items {
    view_label: "Events 20210406: Items"
    sql: LEFT JOIN UNNEST(${events_20210406.items}) as events_20210406__items ;;
    relationship: one_to_many
  }

  join: events_20210406__event_params {
    view_label: "Events 20210406: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210406.event_params}) as events_20210406__event_params ;;
    relationship: one_to_many
  }

  join: events_20210406__user_properties {
    view_label: "Events 20210406: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210406.user_properties}) as events_20210406__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210407 {
  join: events_20210407__items {
    view_label: "Events 20210407: Items"
    sql: LEFT JOIN UNNEST(${events_20210407.items}) as events_20210407__items ;;
    relationship: one_to_many
  }

  join: events_20210407__event_params {
    view_label: "Events 20210407: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210407.event_params}) as events_20210407__event_params ;;
    relationship: one_to_many
  }

  join: events_20210407__user_properties {
    view_label: "Events 20210407: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210407.user_properties}) as events_20210407__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210408 {
  join: events_20210408__items {
    view_label: "Events 20210408: Items"
    sql: LEFT JOIN UNNEST(${events_20210408.items}) as events_20210408__items ;;
    relationship: one_to_many
  }

  join: events_20210408__event_params {
    view_label: "Events 20210408: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210408.event_params}) as events_20210408__event_params ;;
    relationship: one_to_many
  }

  join: events_20210408__user_properties {
    view_label: "Events 20210408: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210408.user_properties}) as events_20210408__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210409 {
  join: events_20210409__items {
    view_label: "Events 20210409: Items"
    sql: LEFT JOIN UNNEST(${events_20210409.items}) as events_20210409__items ;;
    relationship: one_to_many
  }

  join: events_20210409__event_params {
    view_label: "Events 20210409: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210409.event_params}) as events_20210409__event_params ;;
    relationship: one_to_many
  }

  join: events_20210409__user_properties {
    view_label: "Events 20210409: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210409.user_properties}) as events_20210409__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210410 {
  join: events_20210410__items {
    view_label: "Events 20210410: Items"
    sql: LEFT JOIN UNNEST(${events_20210410.items}) as events_20210410__items ;;
    relationship: one_to_many
  }

  join: events_20210410__event_params {
    view_label: "Events 20210410: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210410.event_params}) as events_20210410__event_params ;;
    relationship: one_to_many
  }

  join: events_20210410__user_properties {
    view_label: "Events 20210410: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210410.user_properties}) as events_20210410__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210411 {
  join: events_20210411__items {
    view_label: "Events 20210411: Items"
    sql: LEFT JOIN UNNEST(${events_20210411.items}) as events_20210411__items ;;
    relationship: one_to_many
  }

  join: events_20210411__event_params {
    view_label: "Events 20210411: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210411.event_params}) as events_20210411__event_params ;;
    relationship: one_to_many
  }

  join: events_20210411__user_properties {
    view_label: "Events 20210411: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210411.user_properties}) as events_20210411__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210412 {
  join: events_20210412__items {
    view_label: "Events 20210412: Items"
    sql: LEFT JOIN UNNEST(${events_20210412.items}) as events_20210412__items ;;
    relationship: one_to_many
  }

  join: events_20210412__event_params {
    view_label: "Events 20210412: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210412.event_params}) as events_20210412__event_params ;;
    relationship: one_to_many
  }

  join: events_20210412__user_properties {
    view_label: "Events 20210412: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210412.user_properties}) as events_20210412__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210413 {
  join: events_20210413__items {
    view_label: "Events 20210413: Items"
    sql: LEFT JOIN UNNEST(${events_20210413.items}) as events_20210413__items ;;
    relationship: one_to_many
  }

  join: events_20210413__event_params {
    view_label: "Events 20210413: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210413.event_params}) as events_20210413__event_params ;;
    relationship: one_to_many
  }

  join: events_20210413__user_properties {
    view_label: "Events 20210413: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210413.user_properties}) as events_20210413__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210414 {
  join: events_20210414__items {
    view_label: "Events 20210414: Items"
    sql: LEFT JOIN UNNEST(${events_20210414.items}) as events_20210414__items ;;
    relationship: one_to_many
  }

  join: events_20210414__event_params {
    view_label: "Events 20210414: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210414.event_params}) as events_20210414__event_params ;;
    relationship: one_to_many
  }

  join: events_20210414__user_properties {
    view_label: "Events 20210414: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210414.user_properties}) as events_20210414__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210415 {
  join: events_20210415__items {
    view_label: "Events 20210415: Items"
    sql: LEFT JOIN UNNEST(${events_20210415.items}) as events_20210415__items ;;
    relationship: one_to_many
  }

  join: events_20210415__event_params {
    view_label: "Events 20210415: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210415.event_params}) as events_20210415__event_params ;;
    relationship: one_to_many
  }

  join: events_20210415__user_properties {
    view_label: "Events 20210415: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210415.user_properties}) as events_20210415__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210416 {
  join: events_20210416__items {
    view_label: "Events 20210416: Items"
    sql: LEFT JOIN UNNEST(${events_20210416.items}) as events_20210416__items ;;
    relationship: one_to_many
  }

  join: events_20210416__event_params {
    view_label: "Events 20210416: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210416.event_params}) as events_20210416__event_params ;;
    relationship: one_to_many
  }

  join: events_20210416__user_properties {
    view_label: "Events 20210416: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210416.user_properties}) as events_20210416__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210417 {
  join: events_20210417__items {
    view_label: "Events 20210417: Items"
    sql: LEFT JOIN UNNEST(${events_20210417.items}) as events_20210417__items ;;
    relationship: one_to_many
  }

  join: events_20210417__event_params {
    view_label: "Events 20210417: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210417.event_params}) as events_20210417__event_params ;;
    relationship: one_to_many
  }

  join: events_20210417__user_properties {
    view_label: "Events 20210417: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210417.user_properties}) as events_20210417__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210418 {
  join: events_20210418__items {
    view_label: "Events 20210418: Items"
    sql: LEFT JOIN UNNEST(${events_20210418.items}) as events_20210418__items ;;
    relationship: one_to_many
  }

  join: events_20210418__event_params {
    view_label: "Events 20210418: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210418.event_params}) as events_20210418__event_params ;;
    relationship: one_to_many
  }

  join: events_20210418__user_properties {
    view_label: "Events 20210418: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210418.user_properties}) as events_20210418__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210419 {
  join: events_20210419__items {
    view_label: "Events 20210419: Items"
    sql: LEFT JOIN UNNEST(${events_20210419.items}) as events_20210419__items ;;
    relationship: one_to_many
  }

  join: events_20210419__event_params {
    view_label: "Events 20210419: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210419.event_params}) as events_20210419__event_params ;;
    relationship: one_to_many
  }

  join: events_20210419__user_properties {
    view_label: "Events 20210419: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210419.user_properties}) as events_20210419__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210420 {
  join: events_20210420__items {
    view_label: "Events 20210420: Items"
    sql: LEFT JOIN UNNEST(${events_20210420.items}) as events_20210420__items ;;
    relationship: one_to_many
  }

  join: events_20210420__event_params {
    view_label: "Events 20210420: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210420.event_params}) as events_20210420__event_params ;;
    relationship: one_to_many
  }

  join: events_20210420__user_properties {
    view_label: "Events 20210420: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210420.user_properties}) as events_20210420__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210421 {
  join: events_20210421__items {
    view_label: "Events 20210421: Items"
    sql: LEFT JOIN UNNEST(${events_20210421.items}) as events_20210421__items ;;
    relationship: one_to_many
  }

  join: events_20210421__event_params {
    view_label: "Events 20210421: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210421.event_params}) as events_20210421__event_params ;;
    relationship: one_to_many
  }

  join: events_20210421__user_properties {
    view_label: "Events 20210421: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210421.user_properties}) as events_20210421__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210422 {
  join: events_20210422__items {
    view_label: "Events 20210422: Items"
    sql: LEFT JOIN UNNEST(${events_20210422.items}) as events_20210422__items ;;
    relationship: one_to_many
  }

  join: events_20210422__event_params {
    view_label: "Events 20210422: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210422.event_params}) as events_20210422__event_params ;;
    relationship: one_to_many
  }

  join: events_20210422__user_properties {
    view_label: "Events 20210422: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210422.user_properties}) as events_20210422__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210423 {
  join: events_20210423__items {
    view_label: "Events 20210423: Items"
    sql: LEFT JOIN UNNEST(${events_20210423.items}) as events_20210423__items ;;
    relationship: one_to_many
  }

  join: events_20210423__event_params {
    view_label: "Events 20210423: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210423.event_params}) as events_20210423__event_params ;;
    relationship: one_to_many
  }

  join: events_20210423__user_properties {
    view_label: "Events 20210423: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210423.user_properties}) as events_20210423__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210424 {
  join: events_20210424__items {
    view_label: "Events 20210424: Items"
    sql: LEFT JOIN UNNEST(${events_20210424.items}) as events_20210424__items ;;
    relationship: one_to_many
  }

  join: events_20210424__event_params {
    view_label: "Events 20210424: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210424.event_params}) as events_20210424__event_params ;;
    relationship: one_to_many
  }

  join: events_20210424__user_properties {
    view_label: "Events 20210424: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210424.user_properties}) as events_20210424__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210425 {
  join: events_20210425__items {
    view_label: "Events 20210425: Items"
    sql: LEFT JOIN UNNEST(${events_20210425.items}) as events_20210425__items ;;
    relationship: one_to_many
  }

  join: events_20210425__event_params {
    view_label: "Events 20210425: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210425.event_params}) as events_20210425__event_params ;;
    relationship: one_to_many
  }

  join: events_20210425__user_properties {
    view_label: "Events 20210425: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210425.user_properties}) as events_20210425__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210426 {
  join: events_20210426__items {
    view_label: "Events 20210426: Items"
    sql: LEFT JOIN UNNEST(${events_20210426.items}) as events_20210426__items ;;
    relationship: one_to_many
  }

  join: events_20210426__event_params {
    view_label: "Events 20210426: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210426.event_params}) as events_20210426__event_params ;;
    relationship: one_to_many
  }

  join: events_20210426__user_properties {
    view_label: "Events 20210426: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210426.user_properties}) as events_20210426__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210427 {
  join: events_20210427__items {
    view_label: "Events 20210427: Items"
    sql: LEFT JOIN UNNEST(${events_20210427.items}) as events_20210427__items ;;
    relationship: one_to_many
  }

  join: events_20210427__event_params {
    view_label: "Events 20210427: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210427.event_params}) as events_20210427__event_params ;;
    relationship: one_to_many
  }

  join: events_20210427__user_properties {
    view_label: "Events 20210427: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210427.user_properties}) as events_20210427__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210428 {
  join: events_20210428__items {
    view_label: "Events 20210428: Items"
    sql: LEFT JOIN UNNEST(${events_20210428.items}) as events_20210428__items ;;
    relationship: one_to_many
  }

  join: events_20210428__event_params {
    view_label: "Events 20210428: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210428.event_params}) as events_20210428__event_params ;;
    relationship: one_to_many
  }

  join: events_20210428__user_properties {
    view_label: "Events 20210428: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210428.user_properties}) as events_20210428__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210429 {
  join: events_20210429__items {
    view_label: "Events 20210429: Items"
    sql: LEFT JOIN UNNEST(${events_20210429.items}) as events_20210429__items ;;
    relationship: one_to_many
  }

  join: events_20210429__event_params {
    view_label: "Events 20210429: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210429.event_params}) as events_20210429__event_params ;;
    relationship: one_to_many
  }

  join: events_20210429__user_properties {
    view_label: "Events 20210429: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210429.user_properties}) as events_20210429__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210430 {
  join: events_20210430__items {
    view_label: "Events 20210430: Items"
    sql: LEFT JOIN UNNEST(${events_20210430.items}) as events_20210430__items ;;
    relationship: one_to_many
  }

  join: events_20210430__event_params {
    view_label: "Events 20210430: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210430.event_params}) as events_20210430__event_params ;;
    relationship: one_to_many
  }

  join: events_20210430__user_properties {
    view_label: "Events 20210430: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210430.user_properties}) as events_20210430__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210501 {
  join: events_20210501__items {
    view_label: "Events 20210501: Items"
    sql: LEFT JOIN UNNEST(${events_20210501.items}) as events_20210501__items ;;
    relationship: one_to_many
  }

  join: events_20210501__event_params {
    view_label: "Events 20210501: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210501.event_params}) as events_20210501__event_params ;;
    relationship: one_to_many
  }

  join: events_20210501__user_properties {
    view_label: "Events 20210501: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210501.user_properties}) as events_20210501__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210502 {
  join: events_20210502__items {
    view_label: "Events 20210502: Items"
    sql: LEFT JOIN UNNEST(${events_20210502.items}) as events_20210502__items ;;
    relationship: one_to_many
  }

  join: events_20210502__event_params {
    view_label: "Events 20210502: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210502.event_params}) as events_20210502__event_params ;;
    relationship: one_to_many
  }

  join: events_20210502__user_properties {
    view_label: "Events 20210502: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210502.user_properties}) as events_20210502__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210503 {
  join: events_20210503__items {
    view_label: "Events 20210503: Items"
    sql: LEFT JOIN UNNEST(${events_20210503.items}) as events_20210503__items ;;
    relationship: one_to_many
  }

  join: events_20210503__event_params {
    view_label: "Events 20210503: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210503.event_params}) as events_20210503__event_params ;;
    relationship: one_to_many
  }

  join: events_20210503__user_properties {
    view_label: "Events 20210503: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210503.user_properties}) as events_20210503__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210504 {
  join: events_20210504__items {
    view_label: "Events 20210504: Items"
    sql: LEFT JOIN UNNEST(${events_20210504.items}) as events_20210504__items ;;
    relationship: one_to_many
  }

  join: events_20210504__event_params {
    view_label: "Events 20210504: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210504.event_params}) as events_20210504__event_params ;;
    relationship: one_to_many
  }

  join: events_20210504__user_properties {
    view_label: "Events 20210504: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210504.user_properties}) as events_20210504__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210505 {
  join: events_20210505__items {
    view_label: "Events 20210505: Items"
    sql: LEFT JOIN UNNEST(${events_20210505.items}) as events_20210505__items ;;
    relationship: one_to_many
  }

  join: events_20210505__event_params {
    view_label: "Events 20210505: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210505.event_params}) as events_20210505__event_params ;;
    relationship: one_to_many
  }

  join: events_20210505__user_properties {
    view_label: "Events 20210505: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210505.user_properties}) as events_20210505__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210506 {
  join: events_20210506__items {
    view_label: "Events 20210506: Items"
    sql: LEFT JOIN UNNEST(${events_20210506.items}) as events_20210506__items ;;
    relationship: one_to_many
  }

  join: events_20210506__event_params {
    view_label: "Events 20210506: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210506.event_params}) as events_20210506__event_params ;;
    relationship: one_to_many
  }

  join: events_20210506__user_properties {
    view_label: "Events 20210506: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210506.user_properties}) as events_20210506__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210507 {
  join: events_20210507__items {
    view_label: "Events 20210507: Items"
    sql: LEFT JOIN UNNEST(${events_20210507.items}) as events_20210507__items ;;
    relationship: one_to_many
  }

  join: events_20210507__event_params {
    view_label: "Events 20210507: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210507.event_params}) as events_20210507__event_params ;;
    relationship: one_to_many
  }

  join: events_20210507__user_properties {
    view_label: "Events 20210507: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210507.user_properties}) as events_20210507__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210508 {
  join: events_20210508__items {
    view_label: "Events 20210508: Items"
    sql: LEFT JOIN UNNEST(${events_20210508.items}) as events_20210508__items ;;
    relationship: one_to_many
  }

  join: events_20210508__event_params {
    view_label: "Events 20210508: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210508.event_params}) as events_20210508__event_params ;;
    relationship: one_to_many
  }

  join: events_20210508__user_properties {
    view_label: "Events 20210508: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210508.user_properties}) as events_20210508__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210509 {
  join: events_20210509__items {
    view_label: "Events 20210509: Items"
    sql: LEFT JOIN UNNEST(${events_20210509.items}) as events_20210509__items ;;
    relationship: one_to_many
  }

  join: events_20210509__event_params {
    view_label: "Events 20210509: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210509.event_params}) as events_20210509__event_params ;;
    relationship: one_to_many
  }

  join: events_20210509__user_properties {
    view_label: "Events 20210509: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210509.user_properties}) as events_20210509__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210510 {
  join: events_20210510__items {
    view_label: "Events 20210510: Items"
    sql: LEFT JOIN UNNEST(${events_20210510.items}) as events_20210510__items ;;
    relationship: one_to_many
  }

  join: events_20210510__event_params {
    view_label: "Events 20210510: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210510.event_params}) as events_20210510__event_params ;;
    relationship: one_to_many
  }

  join: events_20210510__user_properties {
    view_label: "Events 20210510: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210510.user_properties}) as events_20210510__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210511 {
  join: events_20210511__items {
    view_label: "Events 20210511: Items"
    sql: LEFT JOIN UNNEST(${events_20210511.items}) as events_20210511__items ;;
    relationship: one_to_many
  }

  join: events_20210511__event_params {
    view_label: "Events 20210511: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210511.event_params}) as events_20210511__event_params ;;
    relationship: one_to_many
  }

  join: events_20210511__user_properties {
    view_label: "Events 20210511: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210511.user_properties}) as events_20210511__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210512 {
  join: events_20210512__items {
    view_label: "Events 20210512: Items"
    sql: LEFT JOIN UNNEST(${events_20210512.items}) as events_20210512__items ;;
    relationship: one_to_many
  }

  join: events_20210512__event_params {
    view_label: "Events 20210512: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210512.event_params}) as events_20210512__event_params ;;
    relationship: one_to_many
  }

  join: events_20210512__user_properties {
    view_label: "Events 20210512: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210512.user_properties}) as events_20210512__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210513 {
  join: events_20210513__items {
    view_label: "Events 20210513: Items"
    sql: LEFT JOIN UNNEST(${events_20210513.items}) as events_20210513__items ;;
    relationship: one_to_many
  }

  join: events_20210513__event_params {
    view_label: "Events 20210513: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210513.event_params}) as events_20210513__event_params ;;
    relationship: one_to_many
  }

  join: events_20210513__user_properties {
    view_label: "Events 20210513: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210513.user_properties}) as events_20210513__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210514 {
  join: events_20210514__items {
    view_label: "Events 20210514: Items"
    sql: LEFT JOIN UNNEST(${events_20210514.items}) as events_20210514__items ;;
    relationship: one_to_many
  }

  join: events_20210514__event_params {
    view_label: "Events 20210514: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210514.event_params}) as events_20210514__event_params ;;
    relationship: one_to_many
  }

  join: events_20210514__user_properties {
    view_label: "Events 20210514: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210514.user_properties}) as events_20210514__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210515 {
  join: events_20210515__items {
    view_label: "Events 20210515: Items"
    sql: LEFT JOIN UNNEST(${events_20210515.items}) as events_20210515__items ;;
    relationship: one_to_many
  }

  join: events_20210515__event_params {
    view_label: "Events 20210515: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210515.event_params}) as events_20210515__event_params ;;
    relationship: one_to_many
  }

  join: events_20210515__user_properties {
    view_label: "Events 20210515: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210515.user_properties}) as events_20210515__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210516 {
  join: events_20210516__items {
    view_label: "Events 20210516: Items"
    sql: LEFT JOIN UNNEST(${events_20210516.items}) as events_20210516__items ;;
    relationship: one_to_many
  }

  join: events_20210516__event_params {
    view_label: "Events 20210516: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210516.event_params}) as events_20210516__event_params ;;
    relationship: one_to_many
  }

  join: events_20210516__user_properties {
    view_label: "Events 20210516: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210516.user_properties}) as events_20210516__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210517 {
  join: events_20210517__items {
    view_label: "Events 20210517: Items"
    sql: LEFT JOIN UNNEST(${events_20210517.items}) as events_20210517__items ;;
    relationship: one_to_many
  }

  join: events_20210517__event_params {
    view_label: "Events 20210517: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210517.event_params}) as events_20210517__event_params ;;
    relationship: one_to_many
  }

  join: events_20210517__user_properties {
    view_label: "Events 20210517: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210517.user_properties}) as events_20210517__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210518 {
  join: events_20210518__items {
    view_label: "Events 20210518: Items"
    sql: LEFT JOIN UNNEST(${events_20210518.items}) as events_20210518__items ;;
    relationship: one_to_many
  }

  join: events_20210518__event_params {
    view_label: "Events 20210518: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210518.event_params}) as events_20210518__event_params ;;
    relationship: one_to_many
  }

  join: events_20210518__user_properties {
    view_label: "Events 20210518: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210518.user_properties}) as events_20210518__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210519 {
  join: events_20210519__items {
    view_label: "Events 20210519: Items"
    sql: LEFT JOIN UNNEST(${events_20210519.items}) as events_20210519__items ;;
    relationship: one_to_many
  }

  join: events_20210519__event_params {
    view_label: "Events 20210519: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210519.event_params}) as events_20210519__event_params ;;
    relationship: one_to_many
  }

  join: events_20210519__user_properties {
    view_label: "Events 20210519: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210519.user_properties}) as events_20210519__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210520 {
  join: events_20210520__items {
    view_label: "Events 20210520: Items"
    sql: LEFT JOIN UNNEST(${events_20210520.items}) as events_20210520__items ;;
    relationship: one_to_many
  }

  join: events_20210520__event_params {
    view_label: "Events 20210520: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210520.event_params}) as events_20210520__event_params ;;
    relationship: one_to_many
  }

  join: events_20210520__user_properties {
    view_label: "Events 20210520: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210520.user_properties}) as events_20210520__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210521 {
  join: events_20210521__items {
    view_label: "Events 20210521: Items"
    sql: LEFT JOIN UNNEST(${events_20210521.items}) as events_20210521__items ;;
    relationship: one_to_many
  }

  join: events_20210521__event_params {
    view_label: "Events 20210521: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210521.event_params}) as events_20210521__event_params ;;
    relationship: one_to_many
  }

  join: events_20210521__user_properties {
    view_label: "Events 20210521: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210521.user_properties}) as events_20210521__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210522 {
  join: events_20210522__items {
    view_label: "Events 20210522: Items"
    sql: LEFT JOIN UNNEST(${events_20210522.items}) as events_20210522__items ;;
    relationship: one_to_many
  }

  join: events_20210522__event_params {
    view_label: "Events 20210522: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210522.event_params}) as events_20210522__event_params ;;
    relationship: one_to_many
  }

  join: events_20210522__user_properties {
    view_label: "Events 20210522: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210522.user_properties}) as events_20210522__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210523 {
  join: events_20210523__items {
    view_label: "Events 20210523: Items"
    sql: LEFT JOIN UNNEST(${events_20210523.items}) as events_20210523__items ;;
    relationship: one_to_many
  }

  join: events_20210523__event_params {
    view_label: "Events 20210523: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210523.event_params}) as events_20210523__event_params ;;
    relationship: one_to_many
  }

  join: events_20210523__user_properties {
    view_label: "Events 20210523: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210523.user_properties}) as events_20210523__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210524 {
  join: events_20210524__items {
    view_label: "Events 20210524: Items"
    sql: LEFT JOIN UNNEST(${events_20210524.items}) as events_20210524__items ;;
    relationship: one_to_many
  }

  join: events_20210524__event_params {
    view_label: "Events 20210524: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210524.event_params}) as events_20210524__event_params ;;
    relationship: one_to_many
  }

  join: events_20210524__user_properties {
    view_label: "Events 20210524: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210524.user_properties}) as events_20210524__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210525 {
  join: events_20210525__items {
    view_label: "Events 20210525: Items"
    sql: LEFT JOIN UNNEST(${events_20210525.items}) as events_20210525__items ;;
    relationship: one_to_many
  }

  join: events_20210525__event_params {
    view_label: "Events 20210525: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210525.event_params}) as events_20210525__event_params ;;
    relationship: one_to_many
  }

  join: events_20210525__user_properties {
    view_label: "Events 20210525: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210525.user_properties}) as events_20210525__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210526 {
  join: events_20210526__items {
    view_label: "Events 20210526: Items"
    sql: LEFT JOIN UNNEST(${events_20210526.items}) as events_20210526__items ;;
    relationship: one_to_many
  }

  join: events_20210526__event_params {
    view_label: "Events 20210526: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210526.event_params}) as events_20210526__event_params ;;
    relationship: one_to_many
  }

  join: events_20210526__user_properties {
    view_label: "Events 20210526: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210526.user_properties}) as events_20210526__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210527 {
  join: events_20210527__items {
    view_label: "Events 20210527: Items"
    sql: LEFT JOIN UNNEST(${events_20210527.items}) as events_20210527__items ;;
    relationship: one_to_many
  }

  join: events_20210527__event_params {
    view_label: "Events 20210527: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210527.event_params}) as events_20210527__event_params ;;
    relationship: one_to_many
  }

  join: events_20210527__user_properties {
    view_label: "Events 20210527: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210527.user_properties}) as events_20210527__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210528 {
  join: events_20210528__items {
    view_label: "Events 20210528: Items"
    sql: LEFT JOIN UNNEST(${events_20210528.items}) as events_20210528__items ;;
    relationship: one_to_many
  }

  join: events_20210528__event_params {
    view_label: "Events 20210528: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210528.event_params}) as events_20210528__event_params ;;
    relationship: one_to_many
  }

  join: events_20210528__user_properties {
    view_label: "Events 20210528: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210528.user_properties}) as events_20210528__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210529 {
  join: events_20210529__items {
    view_label: "Events 20210529: Items"
    sql: LEFT JOIN UNNEST(${events_20210529.items}) as events_20210529__items ;;
    relationship: one_to_many
  }

  join: events_20210529__event_params {
    view_label: "Events 20210529: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210529.event_params}) as events_20210529__event_params ;;
    relationship: one_to_many
  }

  join: events_20210529__user_properties {
    view_label: "Events 20210529: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210529.user_properties}) as events_20210529__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210530 {
  join: events_20210530__items {
    view_label: "Events 20210530: Items"
    sql: LEFT JOIN UNNEST(${events_20210530.items}) as events_20210530__items ;;
    relationship: one_to_many
  }

  join: events_20210530__event_params {
    view_label: "Events 20210530: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210530.event_params}) as events_20210530__event_params ;;
    relationship: one_to_many
  }

  join: events_20210530__user_properties {
    view_label: "Events 20210530: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210530.user_properties}) as events_20210530__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210531 {
  join: events_20210531__items {
    view_label: "Events 20210531: Items"
    sql: LEFT JOIN UNNEST(${events_20210531.items}) as events_20210531__items ;;
    relationship: one_to_many
  }

  join: events_20210531__event_params {
    view_label: "Events 20210531: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210531.event_params}) as events_20210531__event_params ;;
    relationship: one_to_many
  }

  join: events_20210531__user_properties {
    view_label: "Events 20210531: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210531.user_properties}) as events_20210531__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210601 {
  join: events_20210601__items {
    view_label: "Events 20210601: Items"
    sql: LEFT JOIN UNNEST(${events_20210601.items}) as events_20210601__items ;;
    relationship: one_to_many
  }

  join: events_20210601__event_params {
    view_label: "Events 20210601: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210601.event_params}) as events_20210601__event_params ;;
    relationship: one_to_many
  }

  join: events_20210601__user_properties {
    view_label: "Events 20210601: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210601.user_properties}) as events_20210601__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210602 {
  join: events_20210602__items {
    view_label: "Events 20210602: Items"
    sql: LEFT JOIN UNNEST(${events_20210602.items}) as events_20210602__items ;;
    relationship: one_to_many
  }

  join: events_20210602__event_params {
    view_label: "Events 20210602: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210602.event_params}) as events_20210602__event_params ;;
    relationship: one_to_many
  }

  join: events_20210602__user_properties {
    view_label: "Events 20210602: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210602.user_properties}) as events_20210602__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210603 {
  join: events_20210603__items {
    view_label: "Events 20210603: Items"
    sql: LEFT JOIN UNNEST(${events_20210603.items}) as events_20210603__items ;;
    relationship: one_to_many
  }

  join: events_20210603__event_params {
    view_label: "Events 20210603: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210603.event_params}) as events_20210603__event_params ;;
    relationship: one_to_many
  }

  join: events_20210603__user_properties {
    view_label: "Events 20210603: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210603.user_properties}) as events_20210603__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210604 {
  join: events_20210604__items {
    view_label: "Events 20210604: Items"
    sql: LEFT JOIN UNNEST(${events_20210604.items}) as events_20210604__items ;;
    relationship: one_to_many
  }

  join: events_20210604__event_params {
    view_label: "Events 20210604: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210604.event_params}) as events_20210604__event_params ;;
    relationship: one_to_many
  }

  join: events_20210604__user_properties {
    view_label: "Events 20210604: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210604.user_properties}) as events_20210604__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210605 {
  join: events_20210605__items {
    view_label: "Events 20210605: Items"
    sql: LEFT JOIN UNNEST(${events_20210605.items}) as events_20210605__items ;;
    relationship: one_to_many
  }

  join: events_20210605__event_params {
    view_label: "Events 20210605: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210605.event_params}) as events_20210605__event_params ;;
    relationship: one_to_many
  }

  join: events_20210605__user_properties {
    view_label: "Events 20210605: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210605.user_properties}) as events_20210605__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210606 {
  join: events_20210606__items {
    view_label: "Events 20210606: Items"
    sql: LEFT JOIN UNNEST(${events_20210606.items}) as events_20210606__items ;;
    relationship: one_to_many
  }

  join: events_20210606__event_params {
    view_label: "Events 20210606: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210606.event_params}) as events_20210606__event_params ;;
    relationship: one_to_many
  }

  join: events_20210606__user_properties {
    view_label: "Events 20210606: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210606.user_properties}) as events_20210606__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210607 {
  join: events_20210607__items {
    view_label: "Events 20210607: Items"
    sql: LEFT JOIN UNNEST(${events_20210607.items}) as events_20210607__items ;;
    relationship: one_to_many
  }

  join: events_20210607__event_params {
    view_label: "Events 20210607: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210607.event_params}) as events_20210607__event_params ;;
    relationship: one_to_many
  }

  join: events_20210607__user_properties {
    view_label: "Events 20210607: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210607.user_properties}) as events_20210607__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210608 {
  join: events_20210608__items {
    view_label: "Events 20210608: Items"
    sql: LEFT JOIN UNNEST(${events_20210608.items}) as events_20210608__items ;;
    relationship: one_to_many
  }

  join: events_20210608__event_params {
    view_label: "Events 20210608: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210608.event_params}) as events_20210608__event_params ;;
    relationship: one_to_many
  }

  join: events_20210608__user_properties {
    view_label: "Events 20210608: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210608.user_properties}) as events_20210608__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210609 {
  join: events_20210609__items {
    view_label: "Events 20210609: Items"
    sql: LEFT JOIN UNNEST(${events_20210609.items}) as events_20210609__items ;;
    relationship: one_to_many
  }

  join: events_20210609__event_params {
    view_label: "Events 20210609: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210609.event_params}) as events_20210609__event_params ;;
    relationship: one_to_many
  }

  join: events_20210609__user_properties {
    view_label: "Events 20210609: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210609.user_properties}) as events_20210609__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210610 {
  join: events_20210610__items {
    view_label: "Events 20210610: Items"
    sql: LEFT JOIN UNNEST(${events_20210610.items}) as events_20210610__items ;;
    relationship: one_to_many
  }

  join: events_20210610__event_params {
    view_label: "Events 20210610: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210610.event_params}) as events_20210610__event_params ;;
    relationship: one_to_many
  }

  join: events_20210610__user_properties {
    view_label: "Events 20210610: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210610.user_properties}) as events_20210610__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210611 {
  join: events_20210611__items {
    view_label: "Events 20210611: Items"
    sql: LEFT JOIN UNNEST(${events_20210611.items}) as events_20210611__items ;;
    relationship: one_to_many
  }

  join: events_20210611__event_params {
    view_label: "Events 20210611: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210611.event_params}) as events_20210611__event_params ;;
    relationship: one_to_many
  }

  join: events_20210611__user_properties {
    view_label: "Events 20210611: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210611.user_properties}) as events_20210611__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210612 {
  join: events_20210612__items {
    view_label: "Events 20210612: Items"
    sql: LEFT JOIN UNNEST(${events_20210612.items}) as events_20210612__items ;;
    relationship: one_to_many
  }

  join: events_20210612__event_params {
    view_label: "Events 20210612: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210612.event_params}) as events_20210612__event_params ;;
    relationship: one_to_many
  }

  join: events_20210612__user_properties {
    view_label: "Events 20210612: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210612.user_properties}) as events_20210612__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210613 {
  join: events_20210613__items {
    view_label: "Events 20210613: Items"
    sql: LEFT JOIN UNNEST(${events_20210613.items}) as events_20210613__items ;;
    relationship: one_to_many
  }

  join: events_20210613__event_params {
    view_label: "Events 20210613: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210613.event_params}) as events_20210613__event_params ;;
    relationship: one_to_many
  }

  join: events_20210613__user_properties {
    view_label: "Events 20210613: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210613.user_properties}) as events_20210613__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210614 {
  join: events_20210614__items {
    view_label: "Events 20210614: Items"
    sql: LEFT JOIN UNNEST(${events_20210614.items}) as events_20210614__items ;;
    relationship: one_to_many
  }

  join: events_20210614__event_params {
    view_label: "Events 20210614: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210614.event_params}) as events_20210614__event_params ;;
    relationship: one_to_many
  }

  join: events_20210614__user_properties {
    view_label: "Events 20210614: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210614.user_properties}) as events_20210614__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210615 {
  join: events_20210615__items {
    view_label: "Events 20210615: Items"
    sql: LEFT JOIN UNNEST(${events_20210615.items}) as events_20210615__items ;;
    relationship: one_to_many
  }

  join: events_20210615__event_params {
    view_label: "Events 20210615: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210615.event_params}) as events_20210615__event_params ;;
    relationship: one_to_many
  }

  join: events_20210615__user_properties {
    view_label: "Events 20210615: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210615.user_properties}) as events_20210615__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210616 {
  join: events_20210616__items {
    view_label: "Events 20210616: Items"
    sql: LEFT JOIN UNNEST(${events_20210616.items}) as events_20210616__items ;;
    relationship: one_to_many
  }

  join: events_20210616__event_params {
    view_label: "Events 20210616: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210616.event_params}) as events_20210616__event_params ;;
    relationship: one_to_many
  }

  join: events_20210616__user_properties {
    view_label: "Events 20210616: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210616.user_properties}) as events_20210616__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210617 {
  join: events_20210617__items {
    view_label: "Events 20210617: Items"
    sql: LEFT JOIN UNNEST(${events_20210617.items}) as events_20210617__items ;;
    relationship: one_to_many
  }

  join: events_20210617__event_params {
    view_label: "Events 20210617: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210617.event_params}) as events_20210617__event_params ;;
    relationship: one_to_many
  }

  join: events_20210617__user_properties {
    view_label: "Events 20210617: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210617.user_properties}) as events_20210617__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210618 {
  join: events_20210618__items {
    view_label: "Events 20210618: Items"
    sql: LEFT JOIN UNNEST(${events_20210618.items}) as events_20210618__items ;;
    relationship: one_to_many
  }

  join: events_20210618__event_params {
    view_label: "Events 20210618: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210618.event_params}) as events_20210618__event_params ;;
    relationship: one_to_many
  }

  join: events_20210618__user_properties {
    view_label: "Events 20210618: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210618.user_properties}) as events_20210618__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210619 {
  join: events_20210619__items {
    view_label: "Events 20210619: Items"
    sql: LEFT JOIN UNNEST(${events_20210619.items}) as events_20210619__items ;;
    relationship: one_to_many
  }

  join: events_20210619__event_params {
    view_label: "Events 20210619: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210619.event_params}) as events_20210619__event_params ;;
    relationship: one_to_many
  }

  join: events_20210619__user_properties {
    view_label: "Events 20210619: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210619.user_properties}) as events_20210619__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210620 {
  join: events_20210620__items {
    view_label: "Events 20210620: Items"
    sql: LEFT JOIN UNNEST(${events_20210620.items}) as events_20210620__items ;;
    relationship: one_to_many
  }

  join: events_20210620__event_params {
    view_label: "Events 20210620: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210620.event_params}) as events_20210620__event_params ;;
    relationship: one_to_many
  }

  join: events_20210620__user_properties {
    view_label: "Events 20210620: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210620.user_properties}) as events_20210620__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210621 {
  join: events_20210621__items {
    view_label: "Events 20210621: Items"
    sql: LEFT JOIN UNNEST(${events_20210621.items}) as events_20210621__items ;;
    relationship: one_to_many
  }

  join: events_20210621__event_params {
    view_label: "Events 20210621: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210621.event_params}) as events_20210621__event_params ;;
    relationship: one_to_many
  }

  join: events_20210621__user_properties {
    view_label: "Events 20210621: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210621.user_properties}) as events_20210621__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210622 {
  join: events_20210622__items {
    view_label: "Events 20210622: Items"
    sql: LEFT JOIN UNNEST(${events_20210622.items}) as events_20210622__items ;;
    relationship: one_to_many
  }

  join: events_20210622__event_params {
    view_label: "Events 20210622: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210622.event_params}) as events_20210622__event_params ;;
    relationship: one_to_many
  }

  join: events_20210622__user_properties {
    view_label: "Events 20210622: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210622.user_properties}) as events_20210622__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210623 {
  join: events_20210623__items {
    view_label: "Events 20210623: Items"
    sql: LEFT JOIN UNNEST(${events_20210623.items}) as events_20210623__items ;;
    relationship: one_to_many
  }

  join: events_20210623__event_params {
    view_label: "Events 20210623: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210623.event_params}) as events_20210623__event_params ;;
    relationship: one_to_many
  }

  join: events_20210623__user_properties {
    view_label: "Events 20210623: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210623.user_properties}) as events_20210623__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210624 {
  join: events_20210624__items {
    view_label: "Events 20210624: Items"
    sql: LEFT JOIN UNNEST(${events_20210624.items}) as events_20210624__items ;;
    relationship: one_to_many
  }

  join: events_20210624__event_params {
    view_label: "Events 20210624: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210624.event_params}) as events_20210624__event_params ;;
    relationship: one_to_many
  }

  join: events_20210624__user_properties {
    view_label: "Events 20210624: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210624.user_properties}) as events_20210624__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210625 {
  join: events_20210625__items {
    view_label: "Events 20210625: Items"
    sql: LEFT JOIN UNNEST(${events_20210625.items}) as events_20210625__items ;;
    relationship: one_to_many
  }

  join: events_20210625__event_params {
    view_label: "Events 20210625: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210625.event_params}) as events_20210625__event_params ;;
    relationship: one_to_many
  }

  join: events_20210625__user_properties {
    view_label: "Events 20210625: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210625.user_properties}) as events_20210625__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210626 {
  join: events_20210626__items {
    view_label: "Events 20210626: Items"
    sql: LEFT JOIN UNNEST(${events_20210626.items}) as events_20210626__items ;;
    relationship: one_to_many
  }

  join: events_20210626__event_params {
    view_label: "Events 20210626: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210626.event_params}) as events_20210626__event_params ;;
    relationship: one_to_many
  }

  join: events_20210626__user_properties {
    view_label: "Events 20210626: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210626.user_properties}) as events_20210626__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210627 {
  join: events_20210627__items {
    view_label: "Events 20210627: Items"
    sql: LEFT JOIN UNNEST(${events_20210627.items}) as events_20210627__items ;;
    relationship: one_to_many
  }

  join: events_20210627__event_params {
    view_label: "Events 20210627: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210627.event_params}) as events_20210627__event_params ;;
    relationship: one_to_many
  }

  join: events_20210627__user_properties {
    view_label: "Events 20210627: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210627.user_properties}) as events_20210627__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210628 {
  join: events_20210628__items {
    view_label: "Events 20210628: Items"
    sql: LEFT JOIN UNNEST(${events_20210628.items}) as events_20210628__items ;;
    relationship: one_to_many
  }

  join: events_20210628__event_params {
    view_label: "Events 20210628: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210628.event_params}) as events_20210628__event_params ;;
    relationship: one_to_many
  }

  join: events_20210628__user_properties {
    view_label: "Events 20210628: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210628.user_properties}) as events_20210628__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210629 {
  join: events_20210629__items {
    view_label: "Events 20210629: Items"
    sql: LEFT JOIN UNNEST(${events_20210629.items}) as events_20210629__items ;;
    relationship: one_to_many
  }

  join: events_20210629__event_params {
    view_label: "Events 20210629: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210629.event_params}) as events_20210629__event_params ;;
    relationship: one_to_many
  }

  join: events_20210629__user_properties {
    view_label: "Events 20210629: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210629.user_properties}) as events_20210629__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20210630 {
  join: events_20210630__items {
    view_label: "Events 20210630: Items"
    sql: LEFT JOIN UNNEST(${events_20210630.items}) as events_20210630__items ;;
    relationship: one_to_many
  }

  join: events_20210630__event_params {
    view_label: "Events 20210630: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210630.event_params}) as events_20210630__event_params ;;
    relationship: one_to_many
  }

  join: events_20210630__user_properties {
    view_label: "Events 20210630: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210630.user_properties}) as events_20210630__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_all {
  join: events_all__items {
    view_label: "Events All: Items"
    sql: LEFT JOIN UNNEST(${events_all.items}) as events_all__items ;;
    relationship: one_to_many
  }

  join: events_all__event_params {
    view_label: "Events All: Event Params"
    sql: LEFT JOIN UNNEST(${events_all.event_params}) as events_all__event_params ;;
    relationship: one_to_many
  }

  join: events_all__user_properties {
    view_label: "Events All: User Properties"
    sql: LEFT JOIN UNNEST(${events_all.user_properties}) as events_all__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_intraday_20210701 {
  join: events_intraday_20210701__items {
    view_label: "Events Intraday 20210701: Items"
    sql: LEFT JOIN UNNEST(${events_intraday_20210701.items}) as events_intraday_20210701__items ;;
    relationship: one_to_many
  }

  join: events_intraday_20210701__event_params {
    view_label: "Events Intraday 20210701: Event Params"
    sql: LEFT JOIN UNNEST(${events_intraday_20210701.event_params}) as events_intraday_20210701__event_params ;;
    relationship: one_to_many
  }

  join: events_intraday_20210701__user_properties {
    view_label: "Events Intraday 20210701: User Properties"
    sql: LEFT JOIN UNNEST(${events_intraday_20210701.user_properties}) as events_intraday_20210701__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_intraday_20210702 {
  join: events_intraday_20210702__items {
    view_label: "Events Intraday 20210702: Items"
    sql: LEFT JOIN UNNEST(${events_intraday_20210702.items}) as events_intraday_20210702__items ;;
    relationship: one_to_many
  }

  join: events_intraday_20210702__event_params {
    view_label: "Events Intraday 20210702: Event Params"
    sql: LEFT JOIN UNNEST(${events_intraday_20210702.event_params}) as events_intraday_20210702__event_params ;;
    relationship: one_to_many
  }

  join: events_intraday_20210702__user_properties {
    view_label: "Events Intraday 20210702: User Properties"
    sql: LEFT JOIN UNNEST(${events_intraday_20210702.user_properties}) as events_intraday_20210702__user_properties ;;
    relationship: one_to_many
  }
}
