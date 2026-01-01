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

explore: +black_pearl {
  aggregate_table: rollup__date_year_date {
    query: {
      dimensions: [date_year_date]
      measures: [count]
    }

    # Please specify a datagroup_trigger or sql_trigger_value
    # See https://cloud.google.com/looker/docs/r/lookml/types/aggregate_table/materialization
  }
}
