include: "/views/black_pearl.view.lkml"
include: "/views/dbt_metrics_default_calendar.view"

explore: black_pearl {
  view_label: "Black Pearl"
  description: "Black Pearl"

  join: dbt_metrics_default_calendar {
    from: dbt_metrics_default_calendar
    view_label: "dbt_metrics_default_calendar"
    relationship: many_to_one
    sql: ;;
  }

}
